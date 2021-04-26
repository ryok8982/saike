$(function() {
  $('.slider').slick({
    autoplay: true,
    infinite: true,
    slidesToShow: 3,
    slidestoScroll: 3,
    prevArrow: '<div class="slick-prev"></div>',
    nextArrow: '<div class="slick-next"></div>',
    dots: true,
    responsive: [{
      breakpoint: 769,
      setting: {
        slidesToShow: 2,
        slidesToScroll: 2,
      }
    },
    {
      breakpoint: 426,
      setting:{
        slidesToShow: 1,
        slidesToScroll: 1,
      }
    }
  ]
  })
});
