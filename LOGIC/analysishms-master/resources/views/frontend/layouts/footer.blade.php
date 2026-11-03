<!-- ======= Footer ======= -->
<footer id="footer">

    <div class="footer-top">
        <div class="container">
            <div class="row gy-4">

                <!-- Logo + About -->
                <div class="col-lg-3 col-md-6 text-center text-md-start footer-contact">
                    <a href="{{ url('/') }}">
                        <img src="{{ env('APP_FOOTERIMG', 'assets/img/logofooter.gif') }}" class="img-fluid mb-3"
                            style="max-height:70px;">
                    </a>

                    <p>
                        Analysis Softwares Solutions is a leading IT company delivering innovative,
                        scalable, and reliable solutions globally. With a strong focus on technology
                        and process improvement.
                    </p>
                </div>

                <!-- Useful Links -->
                <div class="col-lg-2 col-md-6 footer-links text-center text-md-start">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="{{ url('/') }}">Home</a></li>
                        <li><a href="{{ url('about') }}">About us</a></li>
                        @php 
                            $pages = \App\Models\Page::where('status', 'active')->get();
                        @endphp
                        @foreach($pages as $page)
                            <li><a href="{{ route('page.show', $page->slug) }}">{{ $page->name }}</a></li>
                        @endforeach
                    </ul>
                </div>

                <!-- Services -->
                <div class="col-lg-3 col-md-6 footer-links text-center text-md-start">
                    <h4>Our Services</h4>
                    <ul>
                        <li><a href="{{ url('services/front-office') }}">Front Office</a></li>
                        <li><a href="{{ url('services/pointofsale') }}">POS</a></li>
                        <li><a href="{{ url('services/banquet') }}">Banquet</a></li>
                        <li><a href="{{ url('services/inventory') }}">Inventory</a></li>
                        <li><a href="{{ url('services/reservation') }}">Reservation</a></li>
                    </ul>
                </div>

                <!-- Office -->
                <div class="col-lg-4 col-md-6 footer-newsletter text-center text-md-start">
                    <h4>Head Office</h4>

                    <p>
                        <i class="fas fa-map-marker-alt text-primary me-2"></i>
                        A-2039 Hanspuram Naubasta Kanpur-208021, UP India
                    </p>

                    <p>
                        <i class="fas fa-envelope text-primary me-2"></i>
                        <a href="mailto:{{ config('app.main_mail') }}">
                            {{ config('app.main_mail') }}
                        </a>
                    </p>

                    <p>
                        <i class="fas fa-phone text-primary me-2"></i>
                        +91 {{ config('app.phone') }}
                    </p>

                </div>

            </div>
        </div>
    </div>

    <!-- Bottom Footer -->
    <div class="container d-md-flex py-4 flex-column flex-md-row text-center text-md-start">

        <div class="me-md-auto mb-3 mb-md-0">
            &copy; {{ date('Y') }} <strong>{{ config('app.name', 'Analysis') }}</strong>
            All Rights Reserved
        </div>

        <div class="social-links d-flex justify-content-center justify-content-md-end gap-3">
            <a href="https://twitter.com/{{ config('app.twitter') }}"><i class="bx bxl-twitter"></i></a>
            <a href="https://facebook.com/{{ config('app.facebook') }}"><i class="bx bxl-facebook"></i></a>
            <a href="https://instagram.com/{{ config('app.instagram') }}"><i class="bx bxl-instagram"></i></a>
            <a href="https://linkedin.com/{{ config('app.linkedin') }}"><i class="bx bxl-linkedin"></i></a>
        </div>

    </div>
</footer>

<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
    <i class="bi bi-arrow-up-short"></i>
</a>