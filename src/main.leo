// The 'hello_aleo' program.
program hello_aleo.aleo {
    transition main(public term: u32) -> u32 {
        assert(term < 100_u32);
        assert(term >= 3_u32);
        let a: u32 = 1_u32;
        let b: u32 = 1_u32;
        let temp: u32 = 0_u32;
        for i: u32 in 2_u32..100_u32{
            if term > i {
                temp = a;
                a = b;
                b = a + temp;
            }
        }
        
        return b;
    }
}
