; ModuleID = 'test_07.bc'
source_filename = "main"

define i32 @test_07(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = load i32, i32* %2
  %4 = add i32 %3, 0
  %5 = add i32 1, %4
  ret i32 %5
}
