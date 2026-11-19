<!DOCTYPE html>
<html lang='id'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>@yield('title', 'TOKOGINJA')</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class='bg-gray-50'>
    <nav class='bg-gradient-to-r from-red-600 to-orange-500 shadow-lg'>
        <div class='max-w-7xl mx-auto px-4 py-4 flex flex-wrap justify-between items-center gap-3'>
            <div class='flex items-center gap-3'>
                <div class='bg-white text-red-600 rounded-lg w-10 h-10 flex items-center justify-center font-black text-xl shadow-md'>
                    TG
                </div>
                <div>
                    <a href='{{ route("homeproduk") }}' class='text-2xl font-black text-white tracking-tight hover:text-yellow-200 transition'>
                        TOKOGINJA
                    </a>
                    <p class='text-xs text-yellow-100 -mt-1'>Sparepart Otomotif Terpercaya</p>
                </div>
            </div>

            <div class='flex flex-wrap gap-4 items-center text-sm font-medium'>
                <a href='{{ route("homeproduk") }}' class='text-white hover:text-yellow-200 transition'>Beranda</a>

                @auth
                    <a href='{{ route("riwayat.pembelian") }}' class='text-white hover:text-yellow-200 transition'>
                        Riwayat Pembelian
                    </a>
                    <span class='hidden sm:inline text-white/70'>|</span>
                    <span class='font-semibold text-white'>Halo, {{ Auth::user()->name }}</span>
                    @if(Auth::user()->role === 'admin')
                        <a href='/admin' class='text-yellow-200 hover:text-white transition'>Admin Panel</a>
                    @endif
                    <form method='POST' action='{{ route('logout') }}' class='inline'>
                        @csrf
                        <button class='text-white bg-red-700 hover:bg-red-800 px-3 py-1.5 rounded-md transition'>Logout</button>
                    </form>
                @endauth

                @guest
                    <a href='{{ route('login') }}' class='text-white hover:text-yellow-200 transition'>Login</a>
                    <a href='{{ route('register') }}' class='bg-white text-red-600 hover:bg-yellow-100 px-3 py-1.5 rounded-md font-semibold transition'>Register</a>
                @endguest
            </div>
        </div>
    </nav>

    <main class='max-w-7xl mx-auto px-4 py-8'>
        @if(session('success'))
            <div class='bg-green-100 text-green-700 px-4 py-3 rounded mb-4 border border-green-300'>
                {{ session('success') }}
            </div>
        @endif
        @if(session('error'))
            <div class='bg-red-100 text-red-700 px-4 py-3 rounded mb-4 border border-red-300'>
                {{ session('error') }}
            </div>
        @endif
        @yield('content')
    </main>

    <footer class='bg-gray-900 text-gray-300 mt-12'>
        <div class='max-w-7xl mx-auto px-4 py-6 text-center text-sm'>
            &copy; {{ date('Y') }} <span class='font-bold text-white'>TOKOGINJA</span> &middot; Sparepart Otomotif Terpercaya
        </div>
    </footer>
</body>
</html>
