@extends('layouts.app')

@section('title', 'Beranda - TOKOGINJA')

@section('content')
<div class='mb-6'>
    <h2 class='text-2xl font-black text-gray-800'>Selamat Datang di TOKOGINJA</h2>
    <p class='text-gray-500'>Toko sparepart otomotif terpercaya &mdash; pilihan terbaik untuk kendaraan Anda.</p>
</div>

<div class='grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6'>
    @forelse($produks as $produk)
        <div class='bg-white rounded-lg shadow-md p-4 flex flex-col'>
            <img src='{{ $produk->gambar ?? asset("img/default.png") }}'
                 alt='{{ $produk->nama_produk }}'
                 class='w-full h-48 object-cover rounded'>
            <h3 class='text-lg font-bold mt-2 text-gray-800'>{{ $produk->nama_produk }}</h3>
            <p class='text-gray-500 text-sm'>Kode: {{ $produk->kode_produk }}</p>
            <p class='text-gray-600 text-sm'>
                Tipe: {{ $produk->tipe_kendaraan }} |
                Kategori: {{ $produk->kategori->nama_kategori ?? '-' }} |
                Brand: {{ $produk->brand->nama_brand ?? '-' }}
            </p>
            <p class='text-2xl font-bold text-red-600 my-2'>
                Rp {{ number_format($produk->harga, 0, ',', '.') }}
            </p>
            <p class='text-sm mb-2'>Stok: <strong>{{ $produk->stok }}</strong></p>

            @auth
                @if($produk->stok > 0)
                    <form action='{{ route('storeInputpembelian') }}' method='POST'>
                        @csrf
                        <input type='hidden' name='kode_produk' value='{{ $produk->kode_produk }}'>
                        <input type='number' name='jumlah' value='1'
                               min='1' max='{{ $produk->stok }}'
                               class='w-20 border rounded px-2 py-1'>
                        <button type='submit'
                            class='bg-red-600 text-white px-4 py-2 rounded mt-2 hover:bg-red-700 transition font-semibold'>
                            Beli Sekarang
                        </button>
                    </form>
                @else
                    <p class='text-red-600 font-bold mt-2'>Stok Habis</p>
                @endif
            @endauth

            @guest
                <a href='{{ route('login') }}'
                   class='block bg-red-600 text-white text-center py-2 rounded mt-2 hover:bg-red-700 transition font-semibold'>
                    Login untuk Membeli
                </a>
            @endguest
        </div>
    @empty
        <p class='col-span-3 text-center text-gray-500'>Belum ada sparepart tersedia.</p>
    @endforelse
</div>

@auth
    <div class='mt-8 bg-red-50 border border-red-200 rounded-lg p-4 flex flex-wrap items-center justify-between gap-3'>
        <div>
            <h4 class='font-bold text-red-700'>Ingin melihat status pesanan Anda?</h4>
            <p class='text-sm text-red-600'>Pantau perkembangan setiap pembelian hanya di halaman Riwayat Pembelian.</p>
        </div>
        <a href='{{ route("riwayat.pembelian") }}' class='bg-red-600 text-white px-5 py-2.5 rounded-lg hover:bg-red-700 transition font-semibold'>
            Lihat Riwayat Pembelian &rarr;
        </a>
    </div>
@endauth
@endsection
