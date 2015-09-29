  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x150240
#! rip-offset  0x110240
#! capacity    224 bytes

# Text                                 #  Line  RIP       Bytes  Opcode               
.fde_single_encoding_compare:          #        0x110240  0      OPC=<label>          
  movq %rbx, -0x20(%rsp)               #  1     0x110240  5      OPC=movq_m64_r64     
  movl %edi, %ebx                      #  2     0x110245  2      OPC=movl_r32_r32     
  movq %r12, -0x18(%rsp)               #  3     0x110247  5      OPC=movq_m64_r64     
  movq %r13, -0x10(%rsp)               #  4     0x11024c  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                #  5     0x110251  5      OPC=movq_m64_r64     
  subl $0x38, %esp                     #  6     0x110256  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                      #  7     0x110259  3      OPC=addq_r64_r64     
  nop                                  #  8     0x11025c  1      OPC=nop              
  nop                                  #  9     0x11025d  1      OPC=nop              
  nop                                  #  10    0x11025e  1      OPC=nop              
  nop                                  #  11    0x11025f  1      OPC=nop              
  movl %ebx, %ebx                      #  12    0x110260  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  13    0x110262  6      OPC=movzwl_r32_m16   
  movl %esi, %r14d                     #  14    0x110268  3      OPC=movl_r32_r32     
  movl %ebx, %esi                      #  15    0x11026b  2      OPC=movl_r32_r32     
  movl %edx, %r13d                     #  16    0x11026d  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  17    0x110270  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  18    0x110274  4      OPC=movzbl_r32_r8    
  nop                                  #  19    0x110278  1      OPC=nop              
  nop                                  #  20    0x110279  1      OPC=nop              
  nop                                  #  21    0x11027a  1      OPC=nop              
  callq .base_from_object              #  22    0x11027b  5      OPC=callq_label      
  movl %ebx, %ebx                      #  23    0x110280  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  24    0x110282  6      OPC=movzwl_r32_m16   
  leal 0xc(%rsp), %ecx                 #  25    0x110288  4      OPC=leal_r32_m16     
  leal 0x8(%r14), %edx                 #  26    0x11028c  4      OPC=leal_r32_m16     
  movl %eax, %esi                      #  27    0x110290  2      OPC=movl_r32_r32     
  movl %eax, %r12d                     #  28    0x110292  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  29    0x110295  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  30    0x110299  4      OPC=movzbl_r32_r8    
  nop                                  #  31    0x11029d  1      OPC=nop              
  nop                                  #  32    0x11029e  1      OPC=nop              
  nop                                  #  33    0x11029f  1      OPC=nop              
  nop                                  #  34    0x1102a0  1      OPC=nop              
  nop                                  #  35    0x1102a1  1      OPC=nop              
  nop                                  #  36    0x1102a2  1      OPC=nop              
  nop                                  #  37    0x1102a3  1      OPC=nop              
  nop                                  #  38    0x1102a4  1      OPC=nop              
  nop                                  #  39    0x1102a5  1      OPC=nop              
  nop                                  #  40    0x1102a6  1      OPC=nop              
  nop                                  #  41    0x1102a7  1      OPC=nop              
  nop                                  #  42    0x1102a8  1      OPC=nop              
  nop                                  #  43    0x1102a9  1      OPC=nop              
  nop                                  #  44    0x1102aa  1      OPC=nop              
  nop                                  #  45    0x1102ab  1      OPC=nop              
  nop                                  #  46    0x1102ac  1      OPC=nop              
  nop                                  #  47    0x1102ad  1      OPC=nop              
  nop                                  #  48    0x1102ae  1      OPC=nop              
  nop                                  #  49    0x1102af  1      OPC=nop              
  nop                                  #  50    0x1102b0  1      OPC=nop              
  nop                                  #  51    0x1102b1  1      OPC=nop              
  nop                                  #  52    0x1102b2  1      OPC=nop              
  nop                                  #  53    0x1102b3  1      OPC=nop              
  nop                                  #  54    0x1102b4  1      OPC=nop              
  nop                                  #  55    0x1102b5  1      OPC=nop              
  nop                                  #  56    0x1102b6  1      OPC=nop              
  nop                                  #  57    0x1102b7  1      OPC=nop              
  nop                                  #  58    0x1102b8  1      OPC=nop              
  nop                                  #  59    0x1102b9  1      OPC=nop              
  nop                                  #  60    0x1102ba  1      OPC=nop              
  callq .read_encoded_value_with_base  #  61    0x1102bb  5      OPC=callq_label      
  movl %ebx, %ebx                      #  62    0x1102c0  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  63    0x1102c2  6      OPC=movzwl_r32_m16   
  leal 0x8(%rsp), %ecx                 #  64    0x1102c8  4      OPC=leal_r32_m16     
  leal 0x8(%r13), %edx                 #  65    0x1102cc  4      OPC=leal_r32_m16     
  movl %r12d, %esi                     #  66    0x1102d0  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  67    0x1102d3  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  68    0x1102d7  4      OPC=movzbl_r32_r8    
  callq .read_encoded_value_with_base  #  69    0x1102db  5      OPC=callq_label      
  movl 0x8(%rsp), %edx                 #  70    0x1102e0  4      OPC=movl_r32_m32     
  cmpl %edx, 0xc(%rsp)                 #  71    0x1102e4  4      OPC=cmpl_m32_r32     
  movl $0x1, %eax                      #  72    0x1102e8  5      OPC=movl_r32_imm32   
  movq 0x18(%rsp), %rbx                #  73    0x1102ed  5      OPC=movq_r64_m64     
  movq 0x20(%rsp), %r12                #  74    0x1102f2  5      OPC=movq_r64_m64     
  movq 0x28(%rsp), %r13                #  75    0x1102f7  5      OPC=movq_r64_m64     
  nop                                  #  76    0x1102fc  1      OPC=nop              
  nop                                  #  77    0x1102fd  1      OPC=nop              
  nop                                  #  78    0x1102fe  1      OPC=nop              
  nop                                  #  79    0x1102ff  1      OPC=nop              
  movq 0x30(%rsp), %r14                #  80    0x110300  5      OPC=movq_r64_m64     
  sbbl %ecx, %ecx                      #  81    0x110305  2      OPC=sbbl_r32_r32     
  cmpl %edx, 0xc(%rsp)                 #  82    0x110307  4      OPC=cmpl_m32_r32     
  cmovbel %ecx, %eax                   #  83    0x11030b  3      OPC=cmovbel_r32_r32  
  addl $0x38, %esp                     #  84    0x11030e  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                      #  85    0x110311  3      OPC=addq_r64_r64     
  popq %r11                            #  86    0x110314  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d              #  87    0x110316  7      OPC=andl_r32_imm32   
  nop                                  #  88    0x11031d  1      OPC=nop              
  nop                                  #  89    0x11031e  1      OPC=nop              
  nop                                  #  90    0x11031f  1      OPC=nop              
  nop                                  #  91    0x110320  1      OPC=nop              
  addq %r15, %r11                      #  92    0x110321  3      OPC=addq_r64_r64     
  jmpq %r11                            #  93    0x110324  3      OPC=jmpq_r64         
                                                                                      
.size fde_single_encoding_compare, .-fde_single_encoding_compare

