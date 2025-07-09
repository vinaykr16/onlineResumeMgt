<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ 'Resume/Profile Management' }}</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Scripts -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>

<body>
    <style>
        .custom-navbar {
            background-color: #15445a;
            padding: 14px 30px;
            border-radius: 12px;
            margin: 20px auto;
            width: 90%;
            max-width: 1100px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.05), 0 1px 4px rgba(0, 0, 0, 0.1);
            z-index: 1030;
        }

        .custom-navbar .nav-link {
            font-weight: 500;
            transition: color 0.2s ease;
        }

        .custom-navbar .nav-link:hover {
            color: #007bff !important;
        }
    </style>
    <div id="app">
        <nav class="navbar navbar-expand-lg sticky-top custom-navbar shadow-sm">
            <div class="container d-flex justify-content-between align-items-center">

                {{-- Left side --}}
                <a class="navbar-brand fw-semibold fs-5 text-white" href="#">Resume/Profile Management</a>

                {{-- Right side --}}
                @guest
                    <div class="ms-auto">
                        <a class="nav-link d-inline-block text-white me-3" href="{{ route('login') }}">Login</a>
                    </div>
                @else
                    <div class="ms-auto d-flex align-items-center">
                        <a class="nav-link d-inline-block text-white me-3" href="{{ route('candidate_report') }}">
                            Candidate Report
                        </a>

                        <a class="nav-link d-inline-block text-white" href="{{ route('logout') }}"
                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                            {{ __('Logout') }}
                        </a>

                        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                            @csrf
                        </form>
                    </div>
                    @endif

                </div>
            </nav>

            <main class="py-4">
                @yield('content')
            </main>
        </div>
    </body>

    </html>
