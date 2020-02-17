; ModuleID = 'test_12.bc'
source_filename = "main"

define i32 @test_12(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = getelementptr i32, i32* %1, i32 0
  %4 = load i32, i32* %3
  store i32 1, i32* %3
  %5 = getelementptr i32, i32* %1, i32 0
  %6 = load i32, i32* %5
  ret i32 %6
}
