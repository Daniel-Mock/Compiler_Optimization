; ModuleID = 'test_02.bc'
source_filename = "main"

define i32 @test_02(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  ret i32 6
}
