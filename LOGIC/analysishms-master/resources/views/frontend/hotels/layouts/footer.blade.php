  <!-- ======= Footer ======= -->
  <footer id="footer">

      <div class="footer-top">
          <div class="container">
              <div class="row">

                  <div class="col-lg-3 col-md-6 footer-contact">
                      <div class="logo">
                          {{-- <h1 class="text-light"><a href="{{ url('/') }}">
                            {{ config('app.name', 'Laravel') }}</a></h1> --}}
                          <!-- Uncomment below if you prefer to use an image logo -->
                          <a href="{{ url('/hotels/'. percompdata()->propertyid) }}"><img src="{{ env('APP_FOOTERIMG', 'assets/img/logofooter.gif') }}"
                                  alt="" class="img-fluid"></a>
                      </div>
                      <p class="mt-3">
                      </p>
                  </div>

                  <div class="col-lg-2 col-md-6 footer-links">
                      <h4>Useful Links</h4>
                      <ul>
                          <li><i class="bx bx-chevron-right"></i> <a href="{{ url('/hotels/'. percompdata()->propertyid) }}">Home</a></li>
                          {{-- <li><i class="bx bx-chevron-right"></i> <a href="{{ url('about') }}">About us</a></li> --}}
                          {{-- <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li> --}}
                          {{-- <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li> --}}
                          {{-- <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li> --}}
                      </ul>
                  </div>

                  <div class="col-lg-3 col-md-6 footer-links">
                      <h4>Our Services</h4>
                      <ul>
                          {{-- <li><i class="bx bx-chevron-right"></i> <a href="{{ url('services/front-office') }}">Front Office</a></li>
                          <li><i class="bx bx-chevron-right"></i> <a href="{{ url('services/pointofsale') }}">POS</a></li>
                          <li><i class="bx bx-chevron-right"></i> <a href="{{ url('services/banquet') }}">Banquet</a></li>
                          <li><i class="bx bx-chevron-right"></i> <a href="{{ url('services/inventory') }}">Inventory</a></li>
                          <li><i class="bx bx-chevron-right"></i> <a href="{{ url('services/reservation') }}">Reservation</a></li> --}}
                      </ul>
                  </div>

                  <div class="col-lg-4 col-md-6 footer-newsletter">
                      <h4>Address</h4>
                      <p>
                          <i class="fas fa-map-marker-alt text-primary me-2"></i>
                          {{ percompdata()->address1 }}, {{ percompdata()->address2 }},<br>
                          {{ percompdata()->city }}, {{ percompdata()->state }} - {{ percompdata()->pin }}<br>
                          {{ percompdata()->country }}.
                      </p>
                      <p>
                          <i class="fas fa-envelope text-primary me-2"></i>
                          <a href="mailto:{{ percompdata()->email }}">{{ percompdata()->email }}</a>
                      </p>
                      <p>
                          <i class="fas fa-phone text-primary me-2"></i>
                          +91 {{ percompdata()->mobile }}
                      </p>
                      <p>
                          <i class="fas fa-clock text-primary me-2"></i>
                         24 Hours a day, 7 days a week
                      </p>
                  </div>

              </div>
          </div>
      </div>

      <div class="container d-md-flex py-4">

          <div class="me-md-auto text-center text-md-start">
              <div class="copyright">
                  &copy; Copyright <strong><span>{{ config('app.name', 'Analysis') }} {{ date('Y') }}</span></strong> . All Rights Reserved
              </div>
              <div class="credits">
                  Analysis HMS
              </div>
          </div>
          <div class="social-links text-center text-md-right pt-3 pt-md-0">
              <a href="https://twitter.com/{{ config('app.twitter') }}" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="https://facebook.com/{{ config('app.facebook') }}" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="https://instagram.com/{{ config('app.instagram') }}" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="https://linkedin.com/{{ config('app.linkedin') }}" class="linkedin"><i class="bx bxl-linkedin"></i></a>
          </div>
      </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>


  <!-- Template Main JS File -->
  <script src="{{ asset('assets/js/main.js') }}"></script>

  </body>

  </html>
  <script>
      $(document).ready(function() {
          AOS.init();
          var csrfToken = $('meta[name="csrf-token"]').attr('content');

          $('#contactusform').on('submit', function(e) {
              e.preventDefault();
              var formData = {
                  name: $('#name').val(),
                  email: $('#email').val(),
                  phone_number: $('#phone').val(),
                  message: $('#message').val(),
                  _token: csrfToken
              };

              $.ajax({
                  url: '{{ route('contact.submit') }}',
                  method: 'POST',
                  data: formData,
                  success: function(response) {
                      Swal.fire({
                          icon: 'success',
                          title: 'Success!',
                          text: 'Request Submitted Successfully',
                      });
                      $('#contactusform')[0].reset();
                  },
                  error: function(xhr, status, error) {
                      Swal.fire({
                          icon: 'error',
                          title: 'Oops...',
                          text: 'Error: ' + error,
                      });
                  }
              });
          });
      });
  </script>
