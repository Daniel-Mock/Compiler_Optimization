; ModuleID = 'test_04.bc'
source_filename = "main"

define i32 @test_04(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = alloca i32
  store i32 100, i32* %3
  %4 = load i32, i32* %3
  %5 = add i32 %4, 0
  ret i32 %5
}
