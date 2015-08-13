  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x14f820
#! rip-offset  0x10f820
#! capacity    224 bytes

# Text                                 #  Line  RIP       Bytes  Opcode               
.fde_single_encoding_compare:          #        0x10f820  0      OPC=<label>          
  movq %rbx, -0x20(%rsp)               #  1     0x10f820  5      OPC=movq_m64_r64     
  movl %edi, %ebx                      #  2     0x10f825  2      OPC=movl_r32_r32     
  movq %r12, -0x18(%rsp)               #  3     0x10f827  5      OPC=movq_m64_r64     
  movq %r13, -0x10(%rsp)               #  4     0x10f82c  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                #  5     0x10f831  5      OPC=movq_m64_r64     
  subl $0x38, %esp                     #  6     0x10f836  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                      #  7     0x10f839  3      OPC=addq_r64_r64     
  nop                                  #  8     0x10f83c  1      OPC=nop              
  nop                                  #  9     0x10f83d  1      OPC=nop              
  nop                                  #  10    0x10f83e  1      OPC=nop              
  nop                                  #  11    0x10f83f  1      OPC=nop              
  movl %ebx, %ebx                      #  12    0x10f840  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  13    0x10f842  6      OPC=movzwl_r32_m16   
  movl %esi, %r14d                     #  14    0x10f848  3      OPC=movl_r32_r32     
  movl %ebx, %esi                      #  15    0x10f84b  2      OPC=movl_r32_r32     
  movl %edx, %r13d                     #  16    0x10f84d  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  17    0x10f850  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  18    0x10f854  4      OPC=movzbl_r32_r8    
  nop                                  #  19    0x10f858  1      OPC=nop              
  nop                                  #  20    0x10f859  1      OPC=nop              
  nop                                  #  21    0x10f85a  1      OPC=nop              
  callq .base_from_object              #  22    0x10f85b  5      OPC=callq_label      
  movl %ebx, %ebx                      #  23    0x10f860  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  24    0x10f862  6      OPC=movzwl_r32_m16   
  leal 0xc(%rsp), %ecx                 #  25    0x10f868  4      OPC=leal_r32_m16     
  leal 0x8(%r14), %edx                 #  26    0x10f86c  4      OPC=leal_r32_m16     
  movl %eax, %esi                      #  27    0x10f870  2      OPC=movl_r32_r32     
  movl %eax, %r12d                     #  28    0x10f872  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  29    0x10f875  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  30    0x10f879  4      OPC=movzbl_r32_r8    
  nop                                  #  31    0x10f87d  1      OPC=nop              
  nop                                  #  32    0x10f87e  1      OPC=nop              
  nop                                  #  33    0x10f87f  1      OPC=nop              
  nop                                  #  34    0x10f880  1      OPC=nop              
  nop                                  #  35    0x10f881  1      OPC=nop              
  nop                                  #  36    0x10f882  1      OPC=nop              
  nop                                  #  37    0x10f883  1      OPC=nop              
  nop                                  #  38    0x10f884  1      OPC=nop              
  nop                                  #  39    0x10f885  1      OPC=nop              
  nop                                  #  40    0x10f886  1      OPC=nop              
  nop                                  #  41    0x10f887  1      OPC=nop              
  nop                                  #  42    0x10f888  1      OPC=nop              
  nop                                  #  43    0x10f889  1      OPC=nop              
  nop                                  #  44    0x10f88a  1      OPC=nop              
  nop                                  #  45    0x10f88b  1      OPC=nop              
  nop                                  #  46    0x10f88c  1      OPC=nop              
  nop                                  #  47    0x10f88d  1      OPC=nop              
  nop                                  #  48    0x10f88e  1      OPC=nop              
  nop                                  #  49    0x10f88f  1      OPC=nop              
  nop                                  #  50    0x10f890  1      OPC=nop              
  nop                                  #  51    0x10f891  1      OPC=nop              
  nop                                  #  52    0x10f892  1      OPC=nop              
  nop                                  #  53    0x10f893  1      OPC=nop              
  nop                                  #  54    0x10f894  1      OPC=nop              
  nop                                  #  55    0x10f895  1      OPC=nop              
  nop                                  #  56    0x10f896  1      OPC=nop              
  nop                                  #  57    0x10f897  1      OPC=nop              
  nop                                  #  58    0x10f898  1      OPC=nop              
  nop                                  #  59    0x10f899  1      OPC=nop              
  nop                                  #  60    0x10f89a  1      OPC=nop              
  callq .read_encoded_value_with_base  #  61    0x10f89b  5      OPC=callq_label      
  movl %ebx, %ebx                      #  62    0x10f8a0  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  63    0x10f8a2  6      OPC=movzwl_r32_m16   
  leal 0x8(%rsp), %ecx                 #  64    0x10f8a8  4      OPC=leal_r32_m16     
  leal 0x8(%r13), %edx                 #  65    0x10f8ac  4      OPC=leal_r32_m16     
  movl %r12d, %esi                     #  66    0x10f8b0  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  67    0x10f8b3  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  68    0x10f8b7  4      OPC=movzbl_r32_r8    
  callq .read_encoded_value_with_base  #  69    0x10f8bb  5      OPC=callq_label      
  movl 0x8(%rsp), %edx                 #  70    0x10f8c0  4      OPC=movl_r32_m32     
  cmpl %edx, 0xc(%rsp)                 #  71    0x10f8c4  4      OPC=cmpl_m32_r32     
  movl $0x1, %eax                      #  72    0x10f8c8  5      OPC=movl_r32_imm32   
  movq 0x18(%rsp), %rbx                #  73    0x10f8cd  5      OPC=movq_r64_m64     
  movq 0x20(%rsp), %r12                #  74    0x10f8d2  5      OPC=movq_r64_m64     
  movq 0x28(%rsp), %r13                #  75    0x10f8d7  5      OPC=movq_r64_m64     
  nop                                  #  76    0x10f8dc  1      OPC=nop              
  nop                                  #  77    0x10f8dd  1      OPC=nop              
  nop                                  #  78    0x10f8de  1      OPC=nop              
  nop                                  #  79    0x10f8df  1      OPC=nop              
  movq 0x30(%rsp), %r14                #  80    0x10f8e0  5      OPC=movq_r64_m64     
  sbbl %ecx, %ecx                      #  81    0x10f8e5  2      OPC=sbbl_r32_r32     
  cmpl %edx, 0xc(%rsp)                 #  82    0x10f8e7  4      OPC=cmpl_m32_r32     
  cmovbel %ecx, %eax                   #  83    0x10f8eb  3      OPC=cmovbel_r32_r32  
  addl $0x38, %esp                     #  84    0x10f8ee  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                      #  85    0x10f8f1  3      OPC=addq_r64_r64     
  popq %r11                            #  86    0x10f8f4  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d              #  87    0x10f8f6  7      OPC=andl_r32_imm32   
  nop                                  #  88    0x10f8fd  1      OPC=nop              
  nop                                  #  89    0x10f8fe  1      OPC=nop              
  nop                                  #  90    0x10f8ff  1      OPC=nop              
  nop                                  #  91    0x10f900  1      OPC=nop              
  addq %r15, %r11                      #  92    0x10f901  3      OPC=addq_r64_r64     
  jmpq %r11                            #  93    0x10f904  3      OPC=jmpq_r64         
                                                                                      
.size fde_single_encoding_compare, .-fde_single_encoding_compare

