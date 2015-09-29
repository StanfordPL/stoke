  .text
  .globl _ZNKSt10moneypunctIwLb1EE16do_negative_signEv
  .type _ZNKSt10moneypunctIwLb1EE16do_negative_signEv, @function

#! file-offset 0xf7420
#! rip-offset  0xb7420
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb1EE16do_negative_signEv:      #        0xb7420  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb7420  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb7421  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb7423  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb7425  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb7427  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb742a  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb742d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb742f  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb7434  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb7438  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %esi                       #  11    0xb743a  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb743f  1      OPC=nop             
  nop                                                #  13    0xb7440  1      OPC=nop             
  nop                                                #  14    0xb7441  1      OPC=nop             
  nop                                                #  15    0xb7442  1      OPC=nop             
  nop                                                #  16    0xb7443  1      OPC=nop             
  nop                                                #  17    0xb7444  1      OPC=nop             
  nop                                                #  18    0xb7445  1      OPC=nop             
  nop                                                #  19    0xb7446  1      OPC=nop             
  nop                                                #  20    0xb7447  1      OPC=nop             
  nop                                                #  21    0xb7448  1      OPC=nop             
  nop                                                #  22    0xb7449  1      OPC=nop             
  nop                                                #  23    0xb744a  1      OPC=nop             
  nop                                                #  24    0xb744b  1      OPC=nop             
  nop                                                #  25    0xb744c  1      OPC=nop             
  nop                                                #  26    0xb744d  1      OPC=nop             
  nop                                                #  27    0xb744e  1      OPC=nop             
  nop                                                #  28    0xb744f  1      OPC=nop             
  nop                                                #  29    0xb7450  1      OPC=nop             
  nop                                                #  30    0xb7451  1      OPC=nop             
  nop                                                #  31    0xb7452  1      OPC=nop             
  nop                                                #  32    0xb7453  1      OPC=nop             
  nop                                                #  33    0xb7454  1      OPC=nop             
  nop                                                #  34    0xb7455  1      OPC=nop             
  nop                                                #  35    0xb7456  1      OPC=nop             
  nop                                                #  36    0xb7457  1      OPC=nop             
  nop                                                #  37    0xb7458  1      OPC=nop             
  nop                                                #  38    0xb7459  1      OPC=nop             
  nop                                                #  39    0xb745a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb745b  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb7460  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb7462  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb7465  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb7468  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb7469  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb746b  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb7472  1      OPC=nop             
  nop                                                #  48    0xb7473  1      OPC=nop             
  nop                                                #  49    0xb7474  1      OPC=nop             
  nop                                                #  50    0xb7475  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb7476  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb7479  3      OPC=jmpq_r64        
  nop                                                #  53    0xb747c  1      OPC=nop             
  nop                                                #  54    0xb747d  1      OPC=nop             
  nop                                                #  55    0xb747e  1      OPC=nop             
  nop                                                #  56    0xb747f  1      OPC=nop             
  nop                                                #  57    0xb7480  1      OPC=nop             
  nop                                                #  58    0xb7481  1      OPC=nop             
  nop                                                #  59    0xb7482  1      OPC=nop             
  nop                                                #  60    0xb7483  1      OPC=nop             
  nop                                                #  61    0xb7484  1      OPC=nop             
  nop                                                #  62    0xb7485  1      OPC=nop             
  nop                                                #  63    0xb7486  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb7487  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb7489  1      OPC=nop             
  nop                                                #  66    0xb748a  1      OPC=nop             
  nop                                                #  67    0xb748b  1      OPC=nop             
  nop                                                #  68    0xb748c  1      OPC=nop             
  nop                                                #  69    0xb748d  1      OPC=nop             
  nop                                                #  70    0xb748e  1      OPC=nop             
  nop                                                #  71    0xb748f  1      OPC=nop             
  nop                                                #  72    0xb7490  1      OPC=nop             
  nop                                                #  73    0xb7491  1      OPC=nop             
  nop                                                #  74    0xb7492  1      OPC=nop             
  nop                                                #  75    0xb7493  1      OPC=nop             
  nop                                                #  76    0xb7494  1      OPC=nop             
  nop                                                #  77    0xb7495  1      OPC=nop             
  nop                                                #  78    0xb7496  1      OPC=nop             
  nop                                                #  79    0xb7497  1      OPC=nop             
  nop                                                #  80    0xb7498  1      OPC=nop             
  nop                                                #  81    0xb7499  1      OPC=nop             
  nop                                                #  82    0xb749a  1      OPC=nop             
  nop                                                #  83    0xb749b  1      OPC=nop             
  nop                                                #  84    0xb749c  1      OPC=nop             
  nop                                                #  85    0xb749d  1      OPC=nop             
  nop                                                #  86    0xb749e  1      OPC=nop             
  nop                                                #  87    0xb749f  1      OPC=nop             
  nop                                                #  88    0xb74a0  1      OPC=nop             
  nop                                                #  89    0xb74a1  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb74a2  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb1EE16do_negative_signEv, .-_ZNKSt10moneypunctIwLb1EE16do_negative_signEv

