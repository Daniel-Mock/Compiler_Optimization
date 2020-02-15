; ModuleID = 'test_09.bc'
source_filename = "main"

define i32 @test_09(i32, i32*) {
entry:
  %2 = alloca i32
  store i32 %0, i32* %2
  %3 = load i32, i32* %1
  %4 = load i32, i32* %1
  %5 = load i32, i32* %1
  %6 = icmp slt i32 %3, %4
  %7 = select i1 %6, i32 %3, i32 %4
  %8 = icmp slt i32 %7, %5
  %9 = select i1 %8, i32 %7, i32 %5
  %10 = alloca i32
  store i32 %9, i32* %10
  %11 = load i32, i32* %1
  %12 = load i32, i32* %1
  %13 = load i32, i32* %1
  %14 = icmp sgt i32 %11, %12
  %15 = select i1 %14, i32 %11, i32 %12
  %16 = icmp sgt i32 %15, %13
  %17 = select i1 %16, i32 %15, i32 %13
  %18 = alloca i32
  store i32 %17, i32* %18
  %19 = load i32, i32* %10
  %20 = load i32, i32* %18
  %21 = add i32 %19, 0
  %22 = add i32 %20, %21
  ret i32 %22
}
