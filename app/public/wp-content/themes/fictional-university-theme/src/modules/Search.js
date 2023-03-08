import $ from "jquery";

class Search {
  // 1. describe and create/initiate our object
  constructor() {
    this.openButton = $(".js-search-trigger");
    this.closeButton = $(".search-overlay__close");
    this.searchOverlay = $(".search-overlay");
    this.searchField = $("#search-term");
    this.resultsDiv = $("#search-overlay__results");
    this.events();
    this.OverlayState = false; // This prevents repetitive calling of function if users hold keydown
    this.spinnerState = false;
    this.previousValue;
    this.typingTimer;
  }

  // 2. events
  events() {
    //.bind(this) stops 'this' from referencing elements - so that is references the search object
    this.openButton.on("click", this.openOverlay.bind(this));
    this.closeButton.on("click", this.closeOverlay.bind(this));
    $(document).on("keydown", this.keyPressDispatcher.bind(this));
    this.searchField.on("keyup", this.typingLogic.bind(this));
  }

  // 3. methods (function, action...)
  typingLogic() {
    if (this.searchField.val() != this.previousValue) {
      clearTimeout(this.typingTimer);

      if (this.searchField.val()) {
        if (!this.spinnerState) {
          this.resultsDiv.html('<div class="spinner-loader"></div>');
          this.spinnerState = true;
        }
        this.typingTimer = setTimeout(this.getResults.bind(this), 2000);
      } else {
        this.resultsDiv.html("");
        this.spinnerState = false;
      }
    }

    this.previousValue = this.searchField.val();
  }

  getResults() {
    $.getJSON(
      "http://fictionaluniversity.local/wp-json/wp/v2/posts?search=" +
        this.searchField.val(),
      function (results) {
        alert(results[0].title.rendered);
      }
    );
  }

  openOverlay() {
    this.searchOverlay.addClass("search-overlay--active");
    $("body").addClass("body-no-scroll");
    this.OverlayState = true;
    console.log("open");
  }

  closeOverlay() {
    this.searchOverlay.removeClass("search-overlay--active");
    $("body").removeClass("body-no-scroll");
    this.OverlayState = false;
    console.log("close");
  }

  keyPressDispatcher(e) {
    if (
      e.keyCode == 83 &&
      !this.OverlayState &&
      !$("input, textarea").is(":focus")
    ) {
      this.openOverlay();
    }
    if (e.keyCode == 27 && this.OverlayState) {
      this.closeOverlay();
    }
  }
}

export default Search;
