; ModuleID = 'test_11.bc'
source_filename = "main"

define i32 @test_11(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = load i32, i32* %1
  store i32 1, i32* %1
  ret i32 0
}
