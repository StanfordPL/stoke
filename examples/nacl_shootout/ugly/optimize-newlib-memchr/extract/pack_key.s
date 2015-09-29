  .text
  .globl pack_key
  .type pack_key, @function

#! file-offset 0x63a00
#! rip-offset  0x23a00
#! capacity    160 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
.pack_key:                              #        0x23a00  0      OPC=<label>         
  movl %edi, %edi                       #  1     0x23a00  2      OPC=movl_r32_r32    
  testl %esi, %esi                      #  2     0x23a02  2      OPC=testl_r32_r32   
  jle .L_23a80                          #  3     0x23a04  2      OPC=jle_label       
  movl %edi, %edi                       #  4     0x23a06  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx            #  5     0x23a08  5      OPC=movzbl_r32_m8   
  movl 0x1004cf4c(%rip), %r8d           #  6     0x23a0d  7      OPC=movl_r32_m32    
  xorl %r9d, %r9d                       #  7     0x23a14  3      OPC=xorl_r32_r32    
  xorl %eax, %eax                       #  8     0x23a17  2      OPC=xorl_r32_r32    
  nop                                   #  9     0x23a19  1      OPC=nop             
  nop                                   #  10    0x23a1a  1      OPC=nop             
  nop                                   #  11    0x23a1b  1      OPC=nop             
  nop                                   #  12    0x23a1c  1      OPC=nop             
  nop                                   #  13    0x23a1d  1      OPC=nop             
  nop                                   #  14    0x23a1e  1      OPC=nop             
  nop                                   #  15    0x23a1f  1      OPC=nop             
.L_23a20:                               #        0x23a20  0      OPC=<label>         
  andl $0x7, %edx                       #  16    0x23a20  3      OPC=andl_r32_imm8   
  movl %edx, %edx                       #  17    0x23a23  2      OPC=movl_r32_r32    
  movzbl 0x10020540(%r15,%rdx,1), %edx  #  18    0x23a25  9      OPC=movzbl_r32_m8   
  leaq (%rdx,%rax,4), %rax              #  19    0x23a2e  4      OPC=leaq_r64_m16    
  nop                                   #  20    0x23a32  1      OPC=nop             
  nop                                   #  21    0x23a33  1      OPC=nop             
  nop                                   #  22    0x23a34  1      OPC=nop             
  nop                                   #  23    0x23a35  1      OPC=nop             
  nop                                   #  24    0x23a36  1      OPC=nop             
  nop                                   #  25    0x23a37  1      OPC=nop             
  nop                                   #  26    0x23a38  1      OPC=nop             
  nop                                   #  27    0x23a39  1      OPC=nop             
  nop                                   #  28    0x23a3a  1      OPC=nop             
  nop                                   #  29    0x23a3b  1      OPC=nop             
  nop                                   #  30    0x23a3c  1      OPC=nop             
  nop                                   #  31    0x23a3d  1      OPC=nop             
  nop                                   #  32    0x23a3e  1      OPC=nop             
  nop                                   #  33    0x23a3f  1      OPC=nop             
.L_23a40:                               #        0x23a40  0      OPC=<label>         
  addl $0x1, %edi                       #  34    0x23a40  3      OPC=addl_r32_imm8   
  movl %edi, %edi                       #  35    0x23a43  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %edx            #  36    0x23a45  5      OPC=movzbl_r32_m8   
  movsbl %dl, %ecx                      #  37    0x23a4a  3      OPC=movsbl_r32_r8   
  addl %r8d, %ecx                       #  38    0x23a4d  3      OPC=addl_r32_r32    
  movl %ecx, %ecx                       #  39    0x23a50  2      OPC=movl_r32_r32    
  testb $0x8, 0x1(%r15,%rcx,1)          #  40    0x23a52  6      OPC=testb_m8_imm8   
  jne .L_23a40                          #  41    0x23a58  2      OPC=jne_label       
  addl $0x1, %r9d                       #  42    0x23a5a  4      OPC=addl_r32_imm8   
  xchgw %ax, %ax                        #  43    0x23a5e  2      OPC=xchgw_ax_r16    
  cmpl %esi, %r9d                       #  44    0x23a60  3      OPC=cmpl_r32_r32    
  jne .L_23a20                          #  45    0x23a63  2      OPC=jne_label       
  popq %r11                             #  46    0x23a65  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  47    0x23a67  7      OPC=andl_r32_imm32  
  nop                                   #  48    0x23a6e  1      OPC=nop             
  nop                                   #  49    0x23a6f  1      OPC=nop             
  nop                                   #  50    0x23a70  1      OPC=nop             
  nop                                   #  51    0x23a71  1      OPC=nop             
  addq %r15, %r11                       #  52    0x23a72  3      OPC=addq_r64_r64    
  jmpq %r11                             #  53    0x23a75  3      OPC=jmpq_r64        
  nop                                   #  54    0x23a78  1      OPC=nop             
  nop                                   #  55    0x23a79  1      OPC=nop             
  nop                                   #  56    0x23a7a  1      OPC=nop             
  nop                                   #  57    0x23a7b  1      OPC=nop             
  nop                                   #  58    0x23a7c  1      OPC=nop             
  nop                                   #  59    0x23a7d  1      OPC=nop             
  nop                                   #  60    0x23a7e  1      OPC=nop             
  nop                                   #  61    0x23a7f  1      OPC=nop             
  nop                                   #  62    0x23a80  1      OPC=nop             
  nop                                   #  63    0x23a81  1      OPC=nop             
  nop                                   #  64    0x23a82  1      OPC=nop             
  nop                                   #  65    0x23a83  1      OPC=nop             
  nop                                   #  66    0x23a84  1      OPC=nop             
  nop                                   #  67    0x23a85  1      OPC=nop             
  nop                                   #  68    0x23a86  1      OPC=nop             
.L_23a80:                               #        0x23a87  0      OPC=<label>         
  xorl %eax, %eax                       #  69    0x23a87  2      OPC=xorl_r32_r32    
  popq %r11                             #  70    0x23a89  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d               #  71    0x23a8b  7      OPC=andl_r32_imm32  
  nop                                   #  72    0x23a92  1      OPC=nop             
  nop                                   #  73    0x23a93  1      OPC=nop             
  nop                                   #  74    0x23a94  1      OPC=nop             
  nop                                   #  75    0x23a95  1      OPC=nop             
  addq %r15, %r11                       #  76    0x23a96  3      OPC=addq_r64_r64    
  jmpq %r11                             #  77    0x23a99  3      OPC=jmpq_r64        
  nop                                   #  78    0x23a9c  1      OPC=nop             
  nop                                   #  79    0x23a9d  1      OPC=nop             
  nop                                   #  80    0x23a9e  1      OPC=nop             
  nop                                   #  81    0x23a9f  1      OPC=nop             
  nop                                   #  82    0x23aa0  1      OPC=nop             
  nop                                   #  83    0x23aa1  1      OPC=nop             
  nop                                   #  84    0x23aa2  1      OPC=nop             
  nop                                   #  85    0x23aa3  1      OPC=nop             
  nop                                   #  86    0x23aa4  1      OPC=nop             
  nop                                   #  87    0x23aa5  1      OPC=nop             
  nop                                   #  88    0x23aa6  1      OPC=nop             
  nop                                   #  89    0x23aa7  1      OPC=nop             
  nop                                   #  90    0x23aa8  1      OPC=nop             
  nop                                   #  91    0x23aa9  1      OPC=nop             
  nop                                   #  92    0x23aaa  1      OPC=nop             
  nop                                   #  93    0x23aab  1      OPC=nop             
  nop                                   #  94    0x23aac  1      OPC=nop             
  nop                                   #  95    0x23aad  1      OPC=nop             
                                                                                     
.size pack_key, .-pack_key

