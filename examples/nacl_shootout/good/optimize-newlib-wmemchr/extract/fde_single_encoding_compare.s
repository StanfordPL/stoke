  .text
  .globl fde_single_encoding_compare
  .type fde_single_encoding_compare, @function

#! file-offset 0x14fb20
#! rip-offset  0x10fb20
#! capacity    224 bytes

# Text                                 #  Line  RIP       Bytes  Opcode               
.fde_single_encoding_compare:          #        0x10fb20  0      OPC=<label>          
  movq %rbx, -0x20(%rsp)               #  1     0x10fb20  5      OPC=movq_m64_r64     
  movl %edi, %ebx                      #  2     0x10fb25  2      OPC=movl_r32_r32     
  movq %r12, -0x18(%rsp)               #  3     0x10fb27  5      OPC=movq_m64_r64     
  movq %r13, -0x10(%rsp)               #  4     0x10fb2c  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                #  5     0x10fb31  5      OPC=movq_m64_r64     
  subl $0x38, %esp                     #  6     0x10fb36  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                      #  7     0x10fb39  3      OPC=addq_r64_r64     
  nop                                  #  8     0x10fb3c  1      OPC=nop              
  nop                                  #  9     0x10fb3d  1      OPC=nop              
  nop                                  #  10    0x10fb3e  1      OPC=nop              
  nop                                  #  11    0x10fb3f  1      OPC=nop              
  movl %ebx, %ebx                      #  12    0x10fb40  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  13    0x10fb42  6      OPC=movzwl_r32_m16   
  movl %esi, %r14d                     #  14    0x10fb48  3      OPC=movl_r32_r32     
  movl %ebx, %esi                      #  15    0x10fb4b  2      OPC=movl_r32_r32     
  movl %edx, %r13d                     #  16    0x10fb4d  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  17    0x10fb50  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  18    0x10fb54  4      OPC=movzbl_r32_r8    
  nop                                  #  19    0x10fb58  1      OPC=nop              
  nop                                  #  20    0x10fb59  1      OPC=nop              
  nop                                  #  21    0x10fb5a  1      OPC=nop              
  callq .base_from_object              #  22    0x10fb5b  5      OPC=callq_label      
  movl %ebx, %ebx                      #  23    0x10fb60  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  24    0x10fb62  6      OPC=movzwl_r32_m16   
  leal 0xc(%rsp), %ecx                 #  25    0x10fb68  4      OPC=leal_r32_m16     
  leal 0x8(%r14), %edx                 #  26    0x10fb6c  4      OPC=leal_r32_m16     
  movl %eax, %esi                      #  27    0x10fb70  2      OPC=movl_r32_r32     
  movl %eax, %r12d                     #  28    0x10fb72  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  29    0x10fb75  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  30    0x10fb79  4      OPC=movzbl_r32_r8    
  nop                                  #  31    0x10fb7d  1      OPC=nop              
  nop                                  #  32    0x10fb7e  1      OPC=nop              
  nop                                  #  33    0x10fb7f  1      OPC=nop              
  nop                                  #  34    0x10fb80  1      OPC=nop              
  nop                                  #  35    0x10fb81  1      OPC=nop              
  nop                                  #  36    0x10fb82  1      OPC=nop              
  nop                                  #  37    0x10fb83  1      OPC=nop              
  nop                                  #  38    0x10fb84  1      OPC=nop              
  nop                                  #  39    0x10fb85  1      OPC=nop              
  nop                                  #  40    0x10fb86  1      OPC=nop              
  nop                                  #  41    0x10fb87  1      OPC=nop              
  nop                                  #  42    0x10fb88  1      OPC=nop              
  nop                                  #  43    0x10fb89  1      OPC=nop              
  nop                                  #  44    0x10fb8a  1      OPC=nop              
  nop                                  #  45    0x10fb8b  1      OPC=nop              
  nop                                  #  46    0x10fb8c  1      OPC=nop              
  nop                                  #  47    0x10fb8d  1      OPC=nop              
  nop                                  #  48    0x10fb8e  1      OPC=nop              
  nop                                  #  49    0x10fb8f  1      OPC=nop              
  nop                                  #  50    0x10fb90  1      OPC=nop              
  nop                                  #  51    0x10fb91  1      OPC=nop              
  nop                                  #  52    0x10fb92  1      OPC=nop              
  nop                                  #  53    0x10fb93  1      OPC=nop              
  nop                                  #  54    0x10fb94  1      OPC=nop              
  nop                                  #  55    0x10fb95  1      OPC=nop              
  nop                                  #  56    0x10fb96  1      OPC=nop              
  nop                                  #  57    0x10fb97  1      OPC=nop              
  nop                                  #  58    0x10fb98  1      OPC=nop              
  nop                                  #  59    0x10fb99  1      OPC=nop              
  nop                                  #  60    0x10fb9a  1      OPC=nop              
  callq .read_encoded_value_with_base  #  61    0x10fb9b  5      OPC=callq_label      
  movl %ebx, %ebx                      #  62    0x10fba0  2      OPC=movl_r32_r32     
  movzwl 0x10(%r15,%rbx,1), %edi       #  63    0x10fba2  6      OPC=movzwl_r32_m16   
  leal 0x8(%rsp), %ecx                 #  64    0x10fba8  4      OPC=leal_r32_m16     
  leal 0x8(%r13), %edx                 #  65    0x10fbac  4      OPC=leal_r32_m16     
  movl %r12d, %esi                     #  66    0x10fbb0  3      OPC=movl_r32_r32     
  shrw $0x3, %di                       #  67    0x10fbb3  4      OPC=shrw_r16_imm8    
  movzbl %dil, %edi                    #  68    0x10fbb7  4      OPC=movzbl_r32_r8    
  callq .read_encoded_value_with_base  #  69    0x10fbbb  5      OPC=callq_label      
  movl 0x8(%rsp), %edx                 #  70    0x10fbc0  4      OPC=movl_r32_m32     
  cmpl %edx, 0xc(%rsp)                 #  71    0x10fbc4  4      OPC=cmpl_m32_r32     
  movl $0x1, %eax                      #  72    0x10fbc8  5      OPC=movl_r32_imm32   
  movq 0x18(%rsp), %rbx                #  73    0x10fbcd  5      OPC=movq_r64_m64     
  movq 0x20(%rsp), %r12                #  74    0x10fbd2  5      OPC=movq_r64_m64     
  movq 0x28(%rsp), %r13                #  75    0x10fbd7  5      OPC=movq_r64_m64     
  nop                                  #  76    0x10fbdc  1      OPC=nop              
  nop                                  #  77    0x10fbdd  1      OPC=nop              
  nop                                  #  78    0x10fbde  1      OPC=nop              
  nop                                  #  79    0x10fbdf  1      OPC=nop              
  movq 0x30(%rsp), %r14                #  80    0x10fbe0  5      OPC=movq_r64_m64     
  sbbl %ecx, %ecx                      #  81    0x10fbe5  2      OPC=sbbl_r32_r32     
  cmpl %edx, 0xc(%rsp)                 #  82    0x10fbe7  4      OPC=cmpl_m32_r32     
  cmovbel %ecx, %eax                   #  83    0x10fbeb  3      OPC=cmovbel_r32_r32  
  addl $0x38, %esp                     #  84    0x10fbee  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                      #  85    0x10fbf1  3      OPC=addq_r64_r64     
  popq %r11                            #  86    0x10fbf4  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d              #  87    0x10fbf6  7      OPC=andl_r32_imm32   
  nop                                  #  88    0x10fbfd  1      OPC=nop              
  nop                                  #  89    0x10fbfe  1      OPC=nop              
  nop                                  #  90    0x10fbff  1      OPC=nop              
  nop                                  #  91    0x10fc00  1      OPC=nop              
  addq %r15, %r11                      #  92    0x10fc01  3      OPC=addq_r64_r64     
  jmpq %r11                            #  93    0x10fc04  3      OPC=jmpq_r64         
                                                                                      
.size fde_single_encoding_compare, .-fde_single_encoding_compare

