use std::os;

fn main() {
    let key = "USER";
    /* This won't work if you have switched to root with su */
    match os::getenv(key) {
        Some(val) => println!("{}", val),
        None => println!("No username found!")
    }
}
