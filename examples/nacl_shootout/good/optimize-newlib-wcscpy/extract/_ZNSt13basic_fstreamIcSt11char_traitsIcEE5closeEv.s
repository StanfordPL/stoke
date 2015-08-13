  .text
  .globl _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv
  .type _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv, @function

#! file-offset 0x131a00
#! rip-offset  0xf1a00
#! capacity    128 bytes

# Text                                                               #  Line  RIP      Bytes  Opcode              
._ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv:                  #        0xf1a00  0      OPC=<label>         
  pushq %rbx                                                         #  1     0xf1a00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                    #  2     0xf1a01  2      OPC=movl_r32_r32    
  leal 0xc(%rbx), %edi                                               #  3     0xf1a03  3      OPC=leal_r32_m16    
  nop                                                                #  4     0xf1a06  1      OPC=nop             
  nop                                                                #  5     0xf1a07  1      OPC=nop             
  nop                                                                #  6     0xf1a08  1      OPC=nop             
  nop                                                                #  7     0xf1a09  1      OPC=nop             
  nop                                                                #  8     0xf1a0a  1      OPC=nop             
  nop                                                                #  9     0xf1a0b  1      OPC=nop             
  nop                                                                #  10    0xf1a0c  1      OPC=nop             
  nop                                                                #  11    0xf1a0d  1      OPC=nop             
  nop                                                                #  12    0xf1a0e  1      OPC=nop             
  nop                                                                #  13    0xf1a0f  1      OPC=nop             
  nop                                                                #  14    0xf1a10  1      OPC=nop             
  nop                                                                #  15    0xf1a11  1      OPC=nop             
  nop                                                                #  16    0xf1a12  1      OPC=nop             
  nop                                                                #  17    0xf1a13  1      OPC=nop             
  nop                                                                #  18    0xf1a14  1      OPC=nop             
  nop                                                                #  19    0xf1a15  1      OPC=nop             
  nop                                                                #  20    0xf1a16  1      OPC=nop             
  nop                                                                #  21    0xf1a17  1      OPC=nop             
  nop                                                                #  22    0xf1a18  1      OPC=nop             
  nop                                                                #  23    0xf1a19  1      OPC=nop             
  nop                                                                #  24    0xf1a1a  1      OPC=nop             
  callq ._ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv           #  25    0xf1a1b  5      OPC=callq_label     
  testl %eax, %eax                                                   #  26    0xf1a20  2      OPC=testl_r32_r32   
  je .L_f1a40                                                        #  27    0xf1a22  2      OPC=je_label        
  popq %rbx                                                          #  28    0xf1a24  1      OPC=popq_r64_1      
  popq %r11                                                          #  29    0xf1a25  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                            #  30    0xf1a27  7      OPC=andl_r32_imm32  
  nop                                                                #  31    0xf1a2e  1      OPC=nop             
  nop                                                                #  32    0xf1a2f  1      OPC=nop             
  nop                                                                #  33    0xf1a30  1      OPC=nop             
  nop                                                                #  34    0xf1a31  1      OPC=nop             
  addq %r15, %r11                                                    #  35    0xf1a32  3      OPC=addq_r64_r64    
  jmpq %r11                                                          #  36    0xf1a35  3      OPC=jmpq_r64        
  nop                                                                #  37    0xf1a38  1      OPC=nop             
  nop                                                                #  38    0xf1a39  1      OPC=nop             
  nop                                                                #  39    0xf1a3a  1      OPC=nop             
  nop                                                                #  40    0xf1a3b  1      OPC=nop             
  nop                                                                #  41    0xf1a3c  1      OPC=nop             
  nop                                                                #  42    0xf1a3d  1      OPC=nop             
  nop                                                                #  43    0xf1a3e  1      OPC=nop             
  nop                                                                #  44    0xf1a3f  1      OPC=nop             
  nop                                                                #  45    0xf1a40  1      OPC=nop             
  nop                                                                #  46    0xf1a41  1      OPC=nop             
  nop                                                                #  47    0xf1a42  1      OPC=nop             
  nop                                                                #  48    0xf1a43  1      OPC=nop             
  nop                                                                #  49    0xf1a44  1      OPC=nop             
  nop                                                                #  50    0xf1a45  1      OPC=nop             
  nop                                                                #  51    0xf1a46  1      OPC=nop             
.L_f1a40:                                                            #        0xf1a47  0      OPC=<label>         
  movl %ebx, %ebx                                                    #  52    0xf1a47  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                           #  53    0xf1a49  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                                    #  54    0xf1a4d  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                                    #  55    0xf1a50  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edi                                           #  56    0xf1a52  4      OPC=movl_r32_m32    
  addl %ebx, %edi                                                    #  57    0xf1a56  2      OPC=addl_r32_r32    
  movl %edi, %edi                                                    #  58    0xf1a58  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %esi                                       #  59    0xf1a5a  5      OPC=movl_r32_m32    
  popq %rbx                                                          #  60    0xf1a5f  1      OPC=popq_r64_1      
  orl $0x4, %esi                                                     #  61    0xf1a60  3      OPC=orl_r32_imm8    
  nop                                                                #  62    0xf1a63  1      OPC=nop             
  nop                                                                #  63    0xf1a64  1      OPC=nop             
  nop                                                                #  64    0xf1a65  1      OPC=nop             
  nop                                                                #  65    0xf1a66  1      OPC=nop             
  jmpq ._ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate  #  66    0xf1a67  5      OPC=jmpq_label_1    
  nop                                                                #  67    0xf1a6c  1      OPC=nop             
  nop                                                                #  68    0xf1a6d  1      OPC=nop             
  nop                                                                #  69    0xf1a6e  1      OPC=nop             
  nop                                                                #  70    0xf1a6f  1      OPC=nop             
  nop                                                                #  71    0xf1a70  1      OPC=nop             
  nop                                                                #  72    0xf1a71  1      OPC=nop             
  nop                                                                #  73    0xf1a72  1      OPC=nop             
  nop                                                                #  74    0xf1a73  1      OPC=nop             
  nop                                                                #  75    0xf1a74  1      OPC=nop             
  nop                                                                #  76    0xf1a75  1      OPC=nop             
  nop                                                                #  77    0xf1a76  1      OPC=nop             
  nop                                                                #  78    0xf1a77  1      OPC=nop             
  nop                                                                #  79    0xf1a78  1      OPC=nop             
  nop                                                                #  80    0xf1a79  1      OPC=nop             
  nop                                                                #  81    0xf1a7a  1      OPC=nop             
  nop                                                                #  82    0xf1a7b  1      OPC=nop             
  nop                                                                #  83    0xf1a7c  1      OPC=nop             
  nop                                                                #  84    0xf1a7d  1      OPC=nop             
  nop                                                                #  85    0xf1a7e  1      OPC=nop             
  nop                                                                #  86    0xf1a7f  1      OPC=nop             
  nop                                                                #  87    0xf1a80  1      OPC=nop             
  nop                                                                #  88    0xf1a81  1      OPC=nop             
  nop                                                                #  89    0xf1a82  1      OPC=nop             
  nop                                                                #  90    0xf1a83  1      OPC=nop             
  nop                                                                #  91    0xf1a84  1      OPC=nop             
  nop                                                                #  92    0xf1a85  1      OPC=nop             
  nop                                                                #  93    0xf1a86  1      OPC=nop             
                                                                                                                  
.size _ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv, .-_ZNSt13basic_fstreamIcSt11char_traitsIcEE5closeEv

