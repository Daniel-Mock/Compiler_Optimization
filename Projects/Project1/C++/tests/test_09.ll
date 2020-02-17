; ModuleID = 'test_09.bc'
source_filename = "main"

define i32 @test_09(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = getelementptr i32, i32* %1, i32 0
  %4 = load i32, i32* %3
  %5 = getelementptr i32, i32* %1, i32 1
  %6 = load i32, i32* %5
  %7 = getelementptr i32, i32* %1, i32 2
  %8 = load i32, i32* %7
  %9 = icmp slt i32 %4, %6
  %10 = select i1 %9, i32 %4, i32 %6
  %11 = icmp slt i32 %10, %8
  %12 = select i1 %11, i32 %10, i32 %8
  %13 = alloca i32
  store i32 %12, i32* %13
  %14 = getelementptr i32, i32* %1, i32 0
  %15 = load i32, i32* %14
  %16 = getelementptr i32, i32* %1, i32 1
  %17 = load i32, i32* %16
  %18 = getelementptr i32, i32* %1, i32 2
  %19 = load i32, i32* %18
  %20 = icmp sgt i32 %15, %17
  %21 = select i1 %20, i32 %15, i32 %17
  %22 = icmp sgt i32 %21, %19
  %23 = select i1 %22, i32 %21, i32 %19
  %24 = alloca i32
  store i32 %23, i32* %24
  %25 = load i32, i32* %13
  %26 = load i32, i32* %24
  %27 = add i32 %25, 0
  %28 = add i32 %26, %27
  ret i32 %28
}
