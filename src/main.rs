use rocket::{get, launch, routes};

#[get("/")]
fn index() -> &'static str {
    "This code is made in RUST"
}

#[launch]
fn rocket() -> _ {
    rocket::build().mount("/", routes![index])
}
