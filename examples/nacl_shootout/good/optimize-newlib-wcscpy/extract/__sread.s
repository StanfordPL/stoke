  .text
  .globl __sread
  .type __sread, @function

#! file-offset 0x166360
#! rip-offset  0x126360
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__sread:                         #        0x126360  0      OPC=<label>         
  pushq %rbx                      #  1     0x126360  1      OPC=pushq_r64_1     
  movl %esi, %ebx                 #  2     0x126361  2      OPC=movl_r32_r32    
  movl %edx, %esi                 #  3     0x126363  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                 #  4     0x126365  2      OPC=movl_r32_r32    
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x126367  6      OPC=movswl_r32_m16  
  movl %ecx, %edx                 #  6     0x12636d  2      OPC=movl_r32_r32    
  nop                             #  7     0x12636f  1      OPC=nop             
  nop                             #  8     0x126370  1      OPC=nop             
  nop                             #  9     0x126371  1      OPC=nop             
  nop                             #  10    0x126372  1      OPC=nop             
  nop                             #  11    0x126373  1      OPC=nop             
  nop                             #  12    0x126374  1      OPC=nop             
  nop                             #  13    0x126375  1      OPC=nop             
  nop                             #  14    0x126376  1      OPC=nop             
  nop                             #  15    0x126377  1      OPC=nop             
  nop                             #  16    0x126378  1      OPC=nop             
  nop                             #  17    0x126379  1      OPC=nop             
  nop                             #  18    0x12637a  1      OPC=nop             
  callq .read                     #  19    0x12637b  5      OPC=callq_label     
  testl %eax, %eax                #  20    0x126380  2      OPC=testl_r32_r32   
  js .L_1263a0                    #  21    0x126382  2      OPC=js_label        
  movslq %eax, %rdx               #  22    0x126384  3      OPC=movslq_r64_r32  
  movl %ebx, %ebx                 #  23    0x126387  2      OPC=movl_r32_r32    
  addq %rdx, 0x50(%r15,%rbx,1)    #  24    0x126389  5      OPC=addq_m64_r64    
  popq %rbx                       #  25    0x12638e  1      OPC=popq_r64_1      
  popq %r11                       #  26    0x12638f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  27    0x126391  7      OPC=andl_r32_imm32  
  nop                             #  28    0x126398  1      OPC=nop             
  nop                             #  29    0x126399  1      OPC=nop             
  nop                             #  30    0x12639a  1      OPC=nop             
  nop                             #  31    0x12639b  1      OPC=nop             
  addq %r15, %r11                 #  32    0x12639c  3      OPC=addq_r64_r64    
  jmpq %r11                       #  33    0x12639f  3      OPC=jmpq_r64        
  nop                             #  34    0x1263a2  1      OPC=nop             
  nop                             #  35    0x1263a3  1      OPC=nop             
  nop                             #  36    0x1263a4  1      OPC=nop             
  nop                             #  37    0x1263a5  1      OPC=nop             
  nop                             #  38    0x1263a6  1      OPC=nop             
.L_1263a0:                        #        0x1263a7  0      OPC=<label>         
  movl %ebx, %ebx                 #  39    0x1263a7  2      OPC=movl_r32_r32    
  andw $0xefff, 0xc(%r15,%rbx,1)  #  40    0x1263a9  8      OPC=andw_m16_imm16  
  popq %rbx                       #  41    0x1263b1  1      OPC=popq_r64_1      
  popq %r11                       #  42    0x1263b2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  43    0x1263b4  7      OPC=andl_r32_imm32  
  nop                             #  44    0x1263bb  1      OPC=nop             
  nop                             #  45    0x1263bc  1      OPC=nop             
  nop                             #  46    0x1263bd  1      OPC=nop             
  nop                             #  47    0x1263be  1      OPC=nop             
  addq %r15, %r11                 #  48    0x1263bf  3      OPC=addq_r64_r64    
  jmpq %r11                       #  49    0x1263c2  3      OPC=jmpq_r64        
  nop                             #  50    0x1263c5  1      OPC=nop             
  nop                             #  51    0x1263c6  1      OPC=nop             
  nop                             #  52    0x1263c7  1      OPC=nop             
  nop                             #  53    0x1263c8  1      OPC=nop             
  nop                             #  54    0x1263c9  1      OPC=nop             
  nop                             #  55    0x1263ca  1      OPC=nop             
  nop                             #  56    0x1263cb  1      OPC=nop             
  nop                             #  57    0x1263cc  1      OPC=nop             
  nop                             #  58    0x1263cd  1      OPC=nop             
                                                                                
.size __sread, .-__sread

