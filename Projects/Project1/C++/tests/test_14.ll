; ModuleID = 'test_14.bc'
source_filename = "main"

define i32 @test_14(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = getelementptr i32, i32* %1, i32 0
  %4 = load i32, i32* %3
  %5 = load i32, i32* %2
  %6 = add i32 %5, 0
  %7 = add i32 -1, %6
  %8 = getelementptr i32, i32* %1, i32 %7
  %9 = load i32, i32* %8
  store i32 %9, i32* %3
  %10 = getelementptr i32, i32* %1, i32 1
  %11 = load i32, i32* %10
  %12 = load i32, i32* %2
  %13 = add i32 %12, 0
  %14 = add i32 -2, %13
  %15 = getelementptr i32, i32* %1, i32 %14
  %16 = load i32, i32* %15
  store i32 %16, i32* %10
  %17 = getelementptr i32, i32* %1, i32 2
  %18 = load i32, i32* %17
  %19 = load i32, i32* %2
  %20 = add i32 %19, 0
  %21 = add i32 -3, %20
  %22 = getelementptr i32, i32* %1, i32 %21
  %23 = load i32, i32* %22
  store i32 %23, i32* %17
  %24 = getelementptr i32, i32* %1, i32 3
  %25 = load i32, i32* %24
  %26 = load i32, i32* %2
  %27 = add i32 %26, 0
  %28 = add i32 -4, %27
  %29 = getelementptr i32, i32* %1, i32 %28
  %30 = load i32, i32* %29
  store i32 %30, i32* %24
  ret i32 0
}
