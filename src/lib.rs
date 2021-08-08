#![feature(asm, naked_functions)]
#![allow(clippy::missing_safety_doc)]

static mut HOOKED: u64 = 0;

#[naked]
pub unsafe extern "C" fn hook_target() {
    asm!(
        include_str!("hook_target.S"),
        hooked = sym HOOKED,
        next = sym the_great_argument_muncher,
        options(noreturn),
    )
}

pub unsafe extern "C" fn the_great_argument_muncher(
    x0: u64,
    x1: u64,
    x2: u64,
    x3: u64,
    x4: u64,
    x5: u64,
    x6: u64,
    x7: u64,
    d0: f64,
    d1: f64,
    d2: f64,
    d3: f64,
    d4: f64,
    d5: f64,
    d6: f64,
    d7: f64,
) {
    let address = HOOKED;

    let x = [x0, x1, x2, x3, x4, x5, x6, x7];
    let d = [d0, d1, d2, d3, d4, d5, d6, d7];

    let (x0, d0) = handler(address, x, d);

    asm!(
        "ret",
        in("x0") x0,
        in("d0") d0,
        options(noreturn, nomem, nostack, preserves_flags),
    )
}

fn handler(address: u64, x: [u64; 8], d: [f64; 8]) -> (u64, f64) {
    todo!()
}
