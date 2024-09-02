import { NextResponse } from 'next/server';
import { db } from '@/app/db';
import { getMostPopularProductsMetrics } from '@/actions/metrics';

export async function GET() {
    const startTime = Date.now();

    try {
        const products = await db.product.findMany({
            where: {
                isAvailableForPurchase: true,
            },
            orderBy: {
                orders: {
                    _count: 'desc',
                },
            },
            take: 6,
        });

        const endTime = Date.now();
        const duration = endTime - startTime;
        getMostPopularProductsMetrics(duration);

        return NextResponse.json(products);
    } catch (error) {
        console.error('Failed to fetch most popular products:', error);
        return NextResponse.json({ error: 'Internal server error' }, { status: 500 });
    }
}
