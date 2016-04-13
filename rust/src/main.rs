extern crate rand;

use rand::Rng;

fn knuth_shuffle<T>(v: &mut [T]) {
    let mut rng = rand::thread_rng();
    let l = v.len();

    for n in 0..l {
        let i = rng.gen_range(0, l - n);
        v.swap(i, l - n - 1);
    }
}

fn main() {
    let mut names = ["Matt", "Brandy"];
    let mut factions = ["American", "British"];
    knuth_shuffle(&mut names);
    knuth_shuffle(&mut factions);
    for pair in names.iter().zip(factions.iter()) {
        println!("{:?}", pair);
    }
}
