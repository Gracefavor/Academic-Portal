async function login(e) {
    e.preventDefault();
    console.log(e.target)
}

const loginForm = document.getElementById("login-form");
loginForm.addEventListener("submit", (e) => {
    e.preventDefault();
    const formData = {
        index: e.target[0].value,
        password: e.target[1].value
    }
    console.log(formData);
})