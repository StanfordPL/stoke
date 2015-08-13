  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_negative_signEv
  .type _ZNKSt10moneypunctIwLb1EE16do_negative_signEv, @function

#! file-offset 0xf6a00
#! rip-offset  0xb6a00
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_negative_signEv:      #        0xb6a00  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb6a00  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb6a01  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb6a03  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb6a05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb6a07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb6a0a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb6a0d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb6a0f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb6a14  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb6a18  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %esi                       #  11    0xb6a1a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb6a1f  1      OPC=nop             
  nop                                                #  13    0xb6a20  1      OPC=nop             
  nop                                                #  14    0xb6a21  1      OPC=nop             
  nop                                                #  15    0xb6a22  1      OPC=nop             
  nop                                                #  16    0xb6a23  1      OPC=nop             
  nop                                                #  17    0xb6a24  1      OPC=nop             
  nop                                                #  18    0xb6a25  1      OPC=nop             
  nop                                                #  19    0xb6a26  1      OPC=nop             
  nop                                                #  20    0xb6a27  1      OPC=nop             
  nop                                                #  21    0xb6a28  1      OPC=nop             
  nop                                                #  22    0xb6a29  1      OPC=nop             
  nop                                                #  23    0xb6a2a  1      OPC=nop             
  nop                                                #  24    0xb6a2b  1      OPC=nop             
  nop                                                #  25    0xb6a2c  1      OPC=nop             
  nop                                                #  26    0xb6a2d  1      OPC=nop             
  nop                                                #  27    0xb6a2e  1      OPC=nop             
  nop                                                #  28    0xb6a2f  1      OPC=nop             
  nop                                                #  29    0xb6a30  1      OPC=nop             
  nop                                                #  30    0xb6a31  1      OPC=nop             
  nop                                                #  31    0xb6a32  1      OPC=nop             
  nop                                                #  32    0xb6a33  1      OPC=nop             
  nop                                                #  33    0xb6a34  1      OPC=nop             
  nop                                                #  34    0xb6a35  1      OPC=nop             
  nop                                                #  35    0xb6a36  1      OPC=nop             
  nop                                                #  36    0xb6a37  1      OPC=nop             
  nop                                                #  37    0xb6a38  1      OPC=nop             
  nop                                                #  38    0xb6a39  1      OPC=nop             
  nop                                                #  39    0xb6a3a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb6a3b  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb6a40  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb6a42  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb6a45  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb6a48  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb6a49  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb6a4b  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb6a52  1      OPC=nop             
  nop                                                #  48    0xb6a53  1      OPC=nop             
  nop                                                #  49    0xb6a54  1      OPC=nop             
  nop                                                #  50    0xb6a55  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb6a56  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb6a59  3      OPC=jmpq_r64        
  nop                                                #  53    0xb6a5c  1      OPC=nop             
  nop                                                #  54    0xb6a5d  1      OPC=nop             
  nop                                                #  55    0xb6a5e  1      OPC=nop             
  nop                                                #  56    0xb6a5f  1      OPC=nop             
  nop                                                #  57    0xb6a60  1      OPC=nop             
  nop                                                #  58    0xb6a61  1      OPC=nop             
  nop                                                #  59    0xb6a62  1      OPC=nop             
  nop                                                #  60    0xb6a63  1      OPC=nop             
  nop                                                #  61    0xb6a64  1      OPC=nop             
  nop                                                #  62    0xb6a65  1      OPC=nop             
  nop                                                #  63    0xb6a66  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb6a67  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb6a69  1      OPC=nop             
  nop                                                #  66    0xb6a6a  1      OPC=nop             
  nop                                                #  67    0xb6a6b  1      OPC=nop             
  nop                                                #  68    0xb6a6c  1      OPC=nop             
  nop                                                #  69    0xb6a6d  1      OPC=nop             
  nop                                                #  70    0xb6a6e  1      OPC=nop             
  nop                                                #  71    0xb6a6f  1      OPC=nop             
  nop                                                #  72    0xb6a70  1      OPC=nop             
  nop                                                #  73    0xb6a71  1      OPC=nop             
  nop                                                #  74    0xb6a72  1      OPC=nop             
  nop                                                #  75    0xb6a73  1      OPC=nop             
  nop                                                #  76    0xb6a74  1      OPC=nop             
  nop                                                #  77    0xb6a75  1      OPC=nop             
  nop                                                #  78    0xb6a76  1      OPC=nop             
  nop                                                #  79    0xb6a77  1      OPC=nop             
  nop                                                #  80    0xb6a78  1      OPC=nop             
  nop                                                #  81    0xb6a79  1      OPC=nop             
  nop                                                #  82    0xb6a7a  1      OPC=nop             
  nop                                                #  83    0xb6a7b  1      OPC=nop             
  nop                                                #  84    0xb6a7c  1      OPC=nop             
  nop                                                #  85    0xb6a7d  1      OPC=nop             
  nop                                                #  86    0xb6a7e  1      OPC=nop             
  nop                                                #  87    0xb6a7f  1      OPC=nop             
  nop                                                #  88    0xb6a80  1      OPC=nop             
  nop                                                #  89    0xb6a81  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb6a82  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb1EE16do_negative_signEv, .-_ZNKSt10moneypunctIwLb1EE16do_negative_signEv

