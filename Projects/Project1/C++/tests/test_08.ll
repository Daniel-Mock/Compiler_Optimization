; ModuleID = 'test_08.bc'
source_filename = "main"

define i32 @test_08(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = load i32, i32* %2
  %4 = getelementptr i32, i32* %1, i32 0
  %5 = load i32, i32* %4
  %6 = add i32 %3, 0
  %7 = add i32 %5, %6
  ret i32 %7
}
