@extends('layouts.app')

@section('title', 'Riwayat Pembelian - TOKOGINJA')

@section('content')
<div class='mb-6'>
    <h2 class='text-3xl font-black text-gray-800 mb-1'>Riwayat Pembelian</h2>
    <p class='text-gray-500'>Pantau status setiap pesanan sparepart Anda di TOKOGINJA.</p>
</div>

{{-- === Kartu Statistik Ringkasan === --}}
<div class='grid grid-cols-2 md:grid-cols-4 gap-4 mb-8'>
    <div class='bg-white rounded-lg shadow p-4 border-l-4 border-blue-600'>
        <p class='text-sm text-gray-500'>Total Transaksi</p>
        <p class='text-2xl font-bold text-gray-800'>{{ $statistik['total_transaksi'] }}</p>
    </div>
    <div class='bg-white rounded-lg shadow p-4 border-l-4 border-orange-500'>
        <p class='text-sm text-gray-500'>Sedang Diproses</p>
        <p class='text-2xl font-bold text-orange-600'>{{ $statistik['proses'] }}</p>
    </div>
    <div class='bg-white rounded-lg shadow p-4 border-l-4 border-green-600'>
        <p class='text-sm text-gray-500'>Pesanan Selesai</p>
        <p class='text-2xl font-bold text-green-600'>{{ $statistik['selesai'] }}</p>
    </div>
    <div class='bg-white rounded-lg shadow p-4 border-l-4 border-red-600'>
        <p class='text-sm text-gray-500'>Total Belanja</p>
        <p class='text-xl font-bold text-red-600'>
            Rp {{ number_format($statistik['total_bayar'], 0, ',', '.') }}
        </p>
    </div>
</div>

{{-- === Keterangan Status === --}}
<div class='bg-blue-50 border border-blue-200 rounded-lg p-4 mb-6 text-sm text-blue-800'>
    <p class='font-semibold mb-1'>Keterangan Status Pembelian:</p>
    <div class='flex flex-wrap gap-3'>
        <span class='inline-flex items-center gap-1'><span class='w-3 h-3 rounded-full bg-yellow-400'></span> Verifikasi</span>
        <span class='inline-flex items-center gap-1'><span class='w-3 h-3 rounded-full bg-orange-400'></span> Proses</span>
        <span class='inline-flex items-center gap-1'><span class='w-3 h-3 rounded-full bg-blue-500'></span> Kirim</span>
        <span class='inline-flex items-center gap-1'><span class='w-3 h-3 rounded-full bg-indigo-500'></span> Sampai</span>
        <span class='inline-flex items-center gap-1'><span class='w-3 h-3 rounded-full bg-green-600'></span> Selesai</span>
    </div>
</div>

{{-- === Daftar Pembelian === --}}
@if($pembelians->isEmpty())
    <div class='bg-white rounded-lg shadow p-12 text-center'>
        <div class='text-6xl mb-3'>&#128722;</div>
        <h3 class='text-xl font-semibold text-gray-700 mb-1'>Belum Ada Riwayat Pembelian</h3>
        <p class='text-gray-500 mb-4'>Anda belum pernah berbelanja. Yuk mulai belanja sparepart sekarang!</p>
        <a href='{{ route("homeproduk") }}' class='inline-block bg-red-600 text-white px-6 py-2 rounded-lg hover:bg-red-700 transition font-semibold'>
            Mulai Belanja
        </a>
    </div>
@else
    <div class='overflow-x-auto bg-white rounded-lg shadow'>
        <table class='w-full text-sm text-left'>
            <thead class='bg-gray-800 text-white'>
                <tr>
                    <th class='px-4 py-3'>No.</th>
                    <th class='px-4 py-3'>ID Transaksi</th>
                    <th class='px-4 py-3'>Produk</th>
                    <th class='px-4 py-3 text-center'>Jumlah</th>
                    <th class='px-4 py-3 text-right'>Total Bayar</th>
                    <th class='px-4 py-3'>Tanggal</th>
                    <th class='px-4 py-3 text-center'>Status</th>
                </tr>
            </thead>
            <tbody>
                @foreach($pembelians as $i => $p)
                    @php
                        $statusClass = [
                            'Verifikasi' => 'bg-yellow-100 text-yellow-800 border-yellow-300',
                            'Proses'     => 'bg-orange-100 text-orange-800 border-orange-300',
                            'Kirim'      => 'bg-blue-100 text-blue-800 border-blue-300',
                            'Sampai'     => 'bg-indigo-100 text-indigo-800 border-indigo-300',
                            'Selesai'    => 'bg-green-100 text-green-800 border-green-300',
                        ][$p->status] ?? 'bg-gray-100 text-gray-800 border-gray-300';

                        $dotClass = [
                            'Verifikasi' => 'bg-yellow-400',
                            'Proses'     => 'bg-orange-400',
                            'Kirim'      => 'bg-blue-500',
                            'Sampai'     => 'bg-indigo-500',
                            'Selesai'    => 'bg-green-600',
                        ][$p->status] ?? 'bg-gray-400';
                    @endphp
                    <tr class='border-b border-gray-100 hover:bg-gray-50'>
                        <td class='px-4 py-3 text-gray-500'>{{ $i + 1 }}</td>
                        <td class='px-4 py-3 font-mono text-xs text-gray-700'>{{ $p->id_pembelian }}</td>
                        <td class='px-4 py-3'>
                            <div class='font-semibold text-gray-800'>{{ $p->produk->nama_produk ?? '(Produk tidak ditemukan)' }}</div>
                            <div class='text-xs text-gray-500'>
                                Kode: {{ $p->kode_produk }}
                                @if($p->produk)
                                    &middot; {{ $p->produk->tipe_kendaraan }}
                                    @if($p->produk->kategori) &middot; {{ $p->produk->kategori->nama_kategori }} @endif
                                @endif
                            </div>
                        </td>
                        <td class='px-4 py-3 text-center'>{{ $p->jumlah }}</td>
                        <td class='px-4 py-3 text-right font-semibold'>
                            Rp {{ number_format($p->total_bayar, 0, ',', '.') }}
                        </td>
                        <td class='px-4 py-3 text-gray-600'>
                            {{ $p->tanggal_transaksi->format('d M Y, H:i') }}
                        </td>
                        <td class='px-4 py-3 text-center'>
                            <span class='inline-flex items-center gap-2 px-3 py-1 rounded-full border text-xs font-semibold {{ $statusClass }}'>
                                <span class='w-2 h-2 rounded-full {{ $dotClass }}'></span>
                                {{ $p->status }}
                            </span>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    {{-- === Timeline Status Pesanan Terbaru === --}}
    <div class='mt-8 bg-white rounded-lg shadow p-6'>
        <h3 class='text-lg font-bold text-gray-800 mb-4'>Lacak Status Pesanan Terbaru</h3>
        @php
            $tahapan = ['Verifikasi', 'Proses', 'Kirim', 'Sampai', 'Selesai'];
            $terbaru = $pembelians->first();
            $idxTerbaru = array_search($terbaru->status, $tahapan);
            if ($idxTerbaru === false) { $idxTerbaru = 0; }
        @endphp
        <p class='text-sm text-gray-500 mb-3'>
            Transaksi: <span class='font-mono text-gray-700'>{{ $terbaru->id_pembelian }}</span>
            ({{ $terbaru->produk->nama_produk ?? '-' }})
        </p>
        <div class='flex flex-wrap items-center justify-between gap-2'>
            @foreach($tahapan as $idx => $tahap)
                @php
                    $aktif = $idx <= $idxTerbaru;
                @endphp
                <div class='flex-1 min-w-[120px] text-center'>
                    <div class='mx-auto w-10 h-10 rounded-full flex items-center justify-center font-bold text-sm
                        {{ $aktif ? "bg-red-600 text-white" : "bg-gray-200 text-gray-500" }}'>
                        {{ $idx + 1 }}
                    </div>
                    <p class='mt-2 text-xs font-semibold {{ $aktif ? "text-red-600" : "text-gray-400" }}'>{{ $tahap }}</p>
                </div>
                @if(!$loop->last)
                    <div class='flex-1 min-w-[20px] h-1 rounded
                        {{ $idx < $idxTerbaru ? "bg-red-600" : "bg-gray-200" }}'></div>
                @endif
            @endforeach
        </div>
    </div>
@endif
@endsection
