; ModuleID = 'test_08.bc'
source_filename = "main"

define i32 @test_08(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = load i32, i32* %2
  %4 = load i32, i32* %1
  %5 = add i32 %3, 0
  %6 = add i32 %4, %5
  ret i32 %6
}
