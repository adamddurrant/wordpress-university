import $ from "jquery";

class Search {
  // 1. describe and create/initiate our object
  constructor() {
    this.addSearchHTML();
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
        this.typingTimer = setTimeout(this.getResults.bind(this), 750);
      } else {
        this.resultsDiv.html("");
        this.spinnerState = false;
      }
    }

    this.previousValue = this.searchField.val();
  }

  getResults() {
    $.when(
      $.getJSON(
        universityData.root_url +
          "/wp-json/wp/v2/posts?search=" +
          this.searchField.val()
      ),
      $.getJSON(
        universityData.root_url +
          "/wp-json/wp/v2/pages?search=" +
          this.searchField.val()
      )
    ).then((results, pages) => {
      var combinedResults = results[0].concat(pages[0]);
      this.resultsDiv.html(`
  <h2 class="search-overlay__section-title">General Information</h2>
  ${
    combinedResults.length
      ? '<ul class="link-list min-list">'
      : "<p>This search has no results. Try again...</p>"
  }
    ${combinedResults
      .map(
        (item) =>
          `<li><a href="${item.link}">${item.title.rendered}</a>${
            item.type == "post" ? ` by ${item.authorName}` : ""
          }</li>`
      )
      .join("")}
      ${combinedResults.length ? "</ul>" : ""}
  `);
      this.spinnerState = false;
    }, this.resultsDiv.html("<p>An unexpected error occured. Please try again later</p>"));
  }

  openOverlay() {
    this.searchOverlay.addClass("search-overlay--active");
    $("body").addClass("body-no-scroll");
    this.searchField.val("");
    this.resultsDiv.html("");
    setTimeout(() => {
      this.searchField.focus();
    }, 301);
    this.OverlayState = true;
  }

  closeOverlay() {
    this.searchOverlay.removeClass("search-overlay--active");
    $("body").removeClass("body-no-scroll");
    this.OverlayState = false;
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

  addSearchHTML() {
    $("body").append(`
    <div class="search-overlay">
    <div class="search-overlay__top">
      <div class="container">
        <i class="fa fa-search search-overlay__icon" aria-hidden="true"></i>
        <input type="text" autocomplete="off" class="search-term" placeholder="What are you looking for?" id="search-term">
        <i class="fa fa-window-close search-overlay__close" aria-hidden="true"></i>
      </div>
    </div>
    <div class="container">
      <div id="search-overlay__results"></div>
    </div>
  </div>
  `);
  }
}

export default Search;
