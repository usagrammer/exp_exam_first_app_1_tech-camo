window.addEventListener("load", function () {

  document.addEventListener("click", function (e) {
    if (e.target.className == "post") {
      clickPost(e.target)
    }
  });
});

function clickPost(post) {
  const postId = post.getAttribute("data-id");
  const XHR = new XMLHttpRequest();

  XHR.open("GET", `/posts/${postId}`, true);
  XHR.responseType = "json";
  XHR.send();
  XHR.onload = () => {
    if (XHR.status != 200) {
      alert(`Error ${XHR.status}: ${XHR.statusText}`);
      return null;
    }

    const item = XHR.response.post;
    if (item.checked === true) {
      post.setAttribute("data-check", "true");
    } else if (item.checked === false) {
      post.removeAttribute("data-check");
    }

  };
  XHR.onerror = function () {
    alert("Request failed");
  };
}
