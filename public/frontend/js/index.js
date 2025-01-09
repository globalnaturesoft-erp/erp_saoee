jQuery(document).ready(function($){
  if($(window).width() <= 991) {
    $('.section__project .project__carousel .carousel__list, .advice__carousel .carousel__list').slick({
      infinite: true,
      speed: 300,
      slidesToShow: 3,
      slidesToScroll: 1,
      prevArrow: '<button class="btn--controll slick-prev"><i class="fa-solid fa-arrow-left"></i></button>',
      nextArrow: '<button class="btn--controll slick-next"><i class="fa-solid fa-arrow-right"></i></button>',
      responsive: [
        {
          breakpoint: 1024,
          settings: {
            slidesToShow: 3,
            slidesToScroll: 3,
            infinite: true,
            dots: true
          }
        },
        {
          breakpoint: 991,
          settings: {
            slidesToShow: 2,
            slidesToScroll: 2
          }
        },
        {
          breakpoint: 480,
          settings: {
            slidesToShow: 1,
            slidesToScroll: 1
          }
        }
        // You can unslick at a given breakpoint now by adding:
        // settings: "unslick"
        // instead of a settings object
      ]
    });
  }
  $('.carousel__list.js-slider').slick({
    infinite: true,
    speed: 300,
    slidesToShow: 3,
    slidesToScroll: 1,
    prevArrow: '<button class="btn--controll slick-prev"><i class="fa-solid fa-arrow-left"></i></button>',
    nextArrow: '<button class="btn--controll slick-next"><i class="fa-solid fa-arrow-right"></i></button>',
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
    ]
  });
  /*
  $('.slider').slick({
    autoplaySpeed: 1000,s
    pauseOnHover: true,
    arrows: false,
    dots: false,
    infinite: false,
    fade: true,
    asNavFor: '.slider-nav'
  });
  $('.slider-nav').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    arrows: false,
    dots: false,
    infinite: false,
    focusOnSelect: true,
    asNavFor: '.slider',
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 991,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      }
    ]
  });
  */
  $('.header .navbar .nav-item.dropdown i').click(function(e){
    e.preventDefault();
    var pr = $(this).closest('.dropdown');
    pr.toggleClass('open');
    return false;
  });
  $('.banner-sl').slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    arrows: false
  });
  $('.partner-sl').slick({
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 3000,
    infinite: true,
    prevArrow: '<button class="btn--controll slick-prev"><i class="fa-solid fa-arrow-left"></i></button>',
    nextArrow: '<button class="btn--controll slick-next"><i class="fa-solid fa-arrow-right"></i></button>',
    responsive: [
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1
        }
      }
    ]
  });


  $('ul[aria-labelledby="language"] .dropdown-item').click(function (e) {
    e.preventDefault();
    if (!$(this).hasClass("active")) {
      $('ul[aria-labelledby="language"] .dropdown-item').removeClass("active");
      $(this).addClass("active");
      $(this)
        .parents(".dropdown")
        .find(".btn")
        .html(
          $(this).html()
        );
    }
  });  
});