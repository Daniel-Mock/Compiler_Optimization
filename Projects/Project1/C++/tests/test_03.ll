; ModuleID = 'test_03.bc'
source_filename = "main"

define i32 @test_03(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  ret i32 3
}
