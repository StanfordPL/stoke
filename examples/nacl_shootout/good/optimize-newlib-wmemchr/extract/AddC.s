  .text
  .globl AddC
  .type AddC, @function

#! file-offset 0x689a0
#! rip-offset  0x289a0
#! capacity    192 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
.AddC:                           #        0x289a0  0      OPC=<label>         
  pushq %r14                     #  1     0x289a0  2      OPC=pushq_r64_1     
  pushq %r13                     #  2     0x289a2  2      OPC=pushq_r64_1     
  pushq %r12                     #  3     0x289a4  2      OPC=pushq_r64_1     
  pushq %rbx                     #  4     0x289a6  1      OPC=pushq_r64_1     
  subl $0x8, %esp                #  5     0x289a7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x289aa  3      OPC=addq_r64_r64    
  movl %edi, %r13d               #  7     0x289ad  3      OPC=movl_r32_r32    
  movl %esi, %r12d               #  8     0x289b0  3      OPC=movl_r32_r32    
  movl %edx, %ebx                #  9     0x289b3  2      OPC=movl_r32_r32    
  movl %ecx, %esi                #  10    0x289b5  2      OPC=movl_r32_r32    
  movl $0x3, %edi                #  11    0x289b7  5      OPC=movl_r32_imm32  
  nop                            #  12    0x289bc  1      OPC=nop             
  nop                            #  13    0x289bd  1      OPC=nop             
  nop                            #  14    0x289be  1      OPC=nop             
  nop                            #  15    0x289bf  1      OPC=nop             
  nop                            #  16    0x289c0  1      OPC=nop             
  nop                            #  17    0x289c1  1      OPC=nop             
  nop                            #  18    0x289c2  1      OPC=nop             
  nop                            #  19    0x289c3  1      OPC=nop             
  nop                            #  20    0x289c4  1      OPC=nop             
  nop                            #  21    0x289c5  1      OPC=nop             
  nop                            #  22    0x289c6  1      OPC=nop             
  nop                            #  23    0x289c7  1      OPC=nop             
  nop                            #  24    0x289c8  1      OPC=nop             
  nop                            #  25    0x289c9  1      OPC=nop             
  nop                            #  26    0x289ca  1      OPC=nop             
  nop                            #  27    0x289cb  1      OPC=nop             
  nop                            #  28    0x289cc  1      OPC=nop             
  nop                            #  29    0x289cd  1      OPC=nop             
  nop                            #  30    0x289ce  1      OPC=nop             
  nop                            #  31    0x289cf  1      OPC=nop             
  nop                            #  32    0x289d0  1      OPC=nop             
  nop                            #  33    0x289d1  1      OPC=nop             
  nop                            #  34    0x289d2  1      OPC=nop             
  nop                            #  35    0x289d3  1      OPC=nop             
  nop                            #  36    0x289d4  1      OPC=nop             
  nop                            #  37    0x289d5  1      OPC=nop             
  nop                            #  38    0x289d6  1      OPC=nop             
  nop                            #  39    0x289d7  1      OPC=nop             
  nop                            #  40    0x289d8  1      OPC=nop             
  nop                            #  41    0x289d9  1      OPC=nop             
  nop                            #  42    0x289da  1      OPC=nop             
  callq .Constraint_Create       #  43    0x289db  5      OPC=callq_label     
  movl %eax, %r14d               #  44    0x289e0  3      OPC=movl_r32_r32    
  movl %r14d, %r14d              #  45    0x289e3  3      OPC=movl_r32_r32    
  movl $0x26800, (%r15,%r14,1)   #  46    0x289e6  8      OPC=movl_m32_imm32  
  movl %r14d, %r14d              #  47    0x289ee  3      OPC=movl_r32_r32    
  movl %r13d, 0x18(%r15,%r14,1)  #  48    0x289f1  5      OPC=movl_m32_r32    
  movl %r14d, %r14d              #  49    0x289f6  3      OPC=movl_r32_r32    
  movl %r12d, 0x1c(%r15,%r14,1)  #  50    0x289f9  5      OPC=movl_m32_r32    
  xchgw %ax, %ax                 #  51    0x289fe  2      OPC=xchgw_ax_r16    
  movl %r14d, %r14d              #  52    0x28a00  3      OPC=movl_r32_r32    
  movl %ebx, 0x20(%r15,%r14,1)   #  53    0x28a03  5      OPC=movl_m32_r32    
  movl %r14d, %r14d              #  54    0x28a08  3      OPC=movl_r32_r32    
  movb $0x3, 0xd(%r15,%r14,1)    #  55    0x28a0b  6      OPC=movb_m8_imm8    
  movl %r14d, %r14d              #  56    0x28a11  3      OPC=movl_r32_r32    
  movb $0x2, 0xf(%r15,%r14,1)    #  57    0x28a14  6      OPC=movb_m8_imm8    
  nop                            #  58    0x28a1a  1      OPC=nop             
  nop                            #  59    0x28a1b  1      OPC=nop             
  nop                            #  60    0x28a1c  1      OPC=nop             
  nop                            #  61    0x28a1d  1      OPC=nop             
  nop                            #  62    0x28a1e  1      OPC=nop             
  nop                            #  63    0x28a1f  1      OPC=nop             
  movl %r14d, %r14d              #  64    0x28a20  3      OPC=movl_r32_r32    
  movb $0x1, 0x10(%r15,%r14,1)   #  65    0x28a23  6      OPC=movb_m8_imm8    
  movl %r14d, %r14d              #  66    0x28a29  3      OPC=movl_r32_r32    
  movb $0x0, 0x11(%r15,%r14,1)   #  67    0x28a2c  6      OPC=movb_m8_imm8    
  movl %r14d, %edi               #  68    0x28a32  3      OPC=movl_r32_r32    
  nop                            #  69    0x28a35  1      OPC=nop             
  nop                            #  70    0x28a36  1      OPC=nop             
  nop                            #  71    0x28a37  1      OPC=nop             
  nop                            #  72    0x28a38  1      OPC=nop             
  nop                            #  73    0x28a39  1      OPC=nop             
  nop                            #  74    0x28a3a  1      OPC=nop             
  callq .AddConstraint           #  75    0x28a3b  5      OPC=callq_label     
  movl %r14d, %eax               #  76    0x28a40  3      OPC=movl_r32_r32    
  addl $0x8, %esp                #  77    0x28a43  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  78    0x28a46  3      OPC=addq_r64_r64    
  popq %rbx                      #  79    0x28a49  1      OPC=popq_r64_1      
  popq %r12                      #  80    0x28a4a  2      OPC=popq_r64_1      
  popq %r13                      #  81    0x28a4c  2      OPC=popq_r64_1      
  popq %r14                      #  82    0x28a4e  2      OPC=popq_r64_1      
  popq %r11                      #  83    0x28a50  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  84    0x28a52  7      OPC=andl_r32_imm32  
  nop                            #  85    0x28a59  1      OPC=nop             
  nop                            #  86    0x28a5a  1      OPC=nop             
  nop                            #  87    0x28a5b  1      OPC=nop             
  nop                            #  88    0x28a5c  1      OPC=nop             
  addq %r15, %r11                #  89    0x28a5d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  90    0x28a60  3      OPC=jmpq_r64        
  nop                            #  91    0x28a63  1      OPC=nop             
  nop                            #  92    0x28a64  1      OPC=nop             
  nop                            #  93    0x28a65  1      OPC=nop             
  nop                            #  94    0x28a66  1      OPC=nop             
                                                                              
.size AddC, .-AddC

