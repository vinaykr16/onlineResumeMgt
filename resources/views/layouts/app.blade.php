<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Resume/Profile Management</title>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.bunny.net">

    <link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">

    <!-- Vite -->
    @vite(['resources/sass/app.scss', 'resources/js/app.js'])
</head>


<body>

    <div id="app">

        <!-- =========================
             NAVBAR
        ========================== -->

        <nav class="navbar navbar-expand-lg custom-navbar">

            <div class="container-fluid navbar-inner">

                <!-- Brand -->
                <a class="navbar-brand custom-brand" href="{{ url('/home') }}">

                    <span class="brand-icon">
                        R
                    </span>

                    <span class="brand-text">
                        Resume/Profile Management
                    </span>

                </a>


                <!-- Mobile Toggle -->
                <button class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#mainNavbar"
                        aria-controls="mainNavbar"
                        aria-expanded="false"
                        aria-label="Toggle navigation">

                    <span class="navbar-toggler-icon"></span>

                </button>


                <!-- Navigation -->
                <div class="collapse navbar-collapse" id="mainNavbar">

                    <div class="ms-auto navbar-actions">

                        @guest

                            <!-- Login -->
                            <a class="nav-item-link"
                               href="{{ route('login') }}">

                                <span class="nav-link-text">
                                    Login
                                </span>

                            </a>

                        @else

                            <!-- Candidate Report -->
                            <a class="nav-item-link"
                               href="{{ route('candidate_report') }}">

                                <span class="nav-icon">
                                    ◉
                                </span>

                                <span class="nav-link-text">
                                    Candidate Report
                                </span>

                            </a>


                            <!-- Divider -->
                            <span class="nav-divider"></span>


                            <!-- Logout -->
                            <a class="nav-item-link logout-link"
                               href="{{ route('logout') }}"
                               onclick="event.preventDefault(); document.getElementById('logout-form').submit();">

                                <span class="nav-icon">
                                    ↪
                                </span>

                                <span class="nav-link-text">
                                    {{ __('Logout') }}
                                </span>

                            </a>


                            <!-- Logout Form -->
                            <form id="logout-form"
                                  action="{{ route('logout') }}"
                                  method="POST"
                                  class="d-none">

                                @csrf

                            </form>

                        @endguest

                    </div>

                </div>

            </div>

        </nav>


        <!-- =========================
             MAIN CONTENT
        ========================== -->

        <main class="py-4">

            @yield('content')

        </main>

    </div>


    <!-- =========================
         NAVBAR STYLE
    ========================== -->

    <style>

        /* =========================================
           BODY
        ========================================= */

        body {
            background-color: #f5f7f9;
        }


        /* =========================================
           NAVBAR
        ========================================= */

        .custom-navbar {

            background: linear-gradient(
                135deg,
                #15445a 0%,
                #19576f 100%
            );

            width: 92%;

            max-width: 1250px;

            margin: 20px auto;

            padding: 0;

            border-radius: 14px;

            position: relative;

            z-index: 1030;

            box-shadow:
                0 4px 15px rgba(0, 0, 0, 0.12),
                0 2px 5px rgba(0, 0, 0, 0.08);

        }


        /* =========================================
           NAVBAR INNER
        ========================================= */

        .navbar-inner {

            min-height: 68px;

            padding: 0 28px;

        }


        /* =========================================
           BRAND
        ========================================= */

        .custom-brand {

            display: flex;

            align-items: center;

            gap: 11px;

            color: #ffffff !important;

            font-size: 18px;

            font-weight: 600;

            text-decoration: none;

            letter-spacing: 0.1px;

            transition: opacity 0.2s ease;

        }


        .custom-brand:hover {

            color: #ffffff !important;

            opacity: 0.9;

            text-decoration: none;

        }


        /* =========================================
           BRAND ICON
        ========================================= */

        .brand-icon {

            width: 35px;

            height: 35px;

            display: flex;

            align-items: center;

            justify-content: center;

            border-radius: 8px;

            background: rgba(255, 255, 255, 0.14);

            border: 1px solid rgba(255, 255, 255, 0.18);

            color: #ffffff;

            font-size: 17px;

            font-weight: 700;

        }


        /* =========================================
           NAVIGATION
        ========================================= */

        .navbar-actions {

            display: flex;

            align-items: center;

            gap: 5px;

        }


        /* =========================================
           NAVIGATION LINK
        ========================================= */

        .nav-item-link {

            display: inline-flex;

            align-items: center;

            gap: 8px;

            padding: 9px 14px;

            border-radius: 8px;

            color: #ffffff !important;

            font-size: 14px;

            font-weight: 500;

            text-decoration: none;

            transition:
                background-color 0.2s ease,
                color 0.2s ease,
                transform 0.2s ease;

        }


        .nav-item-link:hover {

            background: rgba(255, 255, 255, 0.12);

            color: #ffffff !important;

            text-decoration: none;

            transform: translateY(-1px);

        }


        /* =========================================
           NAV ICON
        ========================================= */

        .nav-icon {

            width: 20px;

            height: 20px;

            display: inline-flex;

            align-items: center;

            justify-content: center;

            font-size: 16px;

            font-weight: 600;

        }


        /* =========================================
           DIVIDER
        ========================================= */

        .nav-divider {

            width: 1px;

            height: 25px;

            background: rgba(255, 255, 255, 0.25);

            margin: 0 6px;

        }


        /* =========================================
           LOGOUT
        ========================================= */

        .logout-link:hover {

            background: rgba(220, 53, 69, 0.20);

        }


        /* =========================================
           MOBILE TOGGLE
        ========================================= */

        .navbar-toggler {

            border: 1px solid rgba(255, 255, 255, 0.35);

            padding: 6px 9px;

            border-radius: 7px;

        }


        .navbar-toggler:focus {

            box-shadow: none;

        }


        .navbar-toggler-icon {

            filter: brightness(0) invert(1);

        }


        /* =========================================
           TABLET
        ========================================= */

        @media (max-width: 991px) {

            .custom-navbar {

                width: 94%;

                margin: 15px auto;

                border-radius: 12px;

            }


            .navbar-inner {

                padding: 10px 18px;

            }


            .navbar-actions {

                flex-direction: column;

                align-items: stretch;

                padding: 10px 0 5px;

                gap: 3px;

            }


            .nav-item-link {

                width: 100%;

                padding: 10px 12px;

            }


            .nav-divider {

                display: none;

            }

        }


        /* =========================================
           MOBILE
        ========================================= */

        @media (max-width: 576px) {

            .custom-navbar {

                width: 96%;

                margin: 10px auto;

            }


            .navbar-inner {

                padding: 9px 14px;

            }


            .custom-brand {

                font-size: 15px;

            }


            .brand-icon {

                width: 30px;

                height: 30px;

                font-size: 15px;

            }


            .nav-link-text {

                font-size: 14px;

            }

        }

    </style>

</body>

</html>
