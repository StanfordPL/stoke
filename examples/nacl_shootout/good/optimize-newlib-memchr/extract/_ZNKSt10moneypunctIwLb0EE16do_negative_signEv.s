  .text
  .globl _ZNKSt10moneypunctIwLb0EE16do_negative_signEv
  .type _ZNKSt10moneypunctIwLb0EE16do_negative_signEv, @function

#! file-offset 0xf75a0
#! rip-offset  0xb75a0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE16do_negative_signEv:      #        0xb75a0  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb75a0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb75a1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb75a3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb75a5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb75a7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb75aa  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb75ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb75af  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb75b4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb75b8  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %esi                       #  11    0xb75ba  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb75bf  1      OPC=nop             
  nop                                                #  13    0xb75c0  1      OPC=nop             
  nop                                                #  14    0xb75c1  1      OPC=nop             
  nop                                                #  15    0xb75c2  1      OPC=nop             
  nop                                                #  16    0xb75c3  1      OPC=nop             
  nop                                                #  17    0xb75c4  1      OPC=nop             
  nop                                                #  18    0xb75c5  1      OPC=nop             
  nop                                                #  19    0xb75c6  1      OPC=nop             
  nop                                                #  20    0xb75c7  1      OPC=nop             
  nop                                                #  21    0xb75c8  1      OPC=nop             
  nop                                                #  22    0xb75c9  1      OPC=nop             
  nop                                                #  23    0xb75ca  1      OPC=nop             
  nop                                                #  24    0xb75cb  1      OPC=nop             
  nop                                                #  25    0xb75cc  1      OPC=nop             
  nop                                                #  26    0xb75cd  1      OPC=nop             
  nop                                                #  27    0xb75ce  1      OPC=nop             
  nop                                                #  28    0xb75cf  1      OPC=nop             
  nop                                                #  29    0xb75d0  1      OPC=nop             
  nop                                                #  30    0xb75d1  1      OPC=nop             
  nop                                                #  31    0xb75d2  1      OPC=nop             
  nop                                                #  32    0xb75d3  1      OPC=nop             
  nop                                                #  33    0xb75d4  1      OPC=nop             
  nop                                                #  34    0xb75d5  1      OPC=nop             
  nop                                                #  35    0xb75d6  1      OPC=nop             
  nop                                                #  36    0xb75d7  1      OPC=nop             
  nop                                                #  37    0xb75d8  1      OPC=nop             
  nop                                                #  38    0xb75d9  1      OPC=nop             
  nop                                                #  39    0xb75da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb75db  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb75e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb75e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb75e5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb75e8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb75e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb75eb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb75f2  1      OPC=nop             
  nop                                                #  48    0xb75f3  1      OPC=nop             
  nop                                                #  49    0xb75f4  1      OPC=nop             
  nop                                                #  50    0xb75f5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb75f6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb75f9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb75fc  1      OPC=nop             
  nop                                                #  54    0xb75fd  1      OPC=nop             
  nop                                                #  55    0xb75fe  1      OPC=nop             
  nop                                                #  56    0xb75ff  1      OPC=nop             
  nop                                                #  57    0xb7600  1      OPC=nop             
  nop                                                #  58    0xb7601  1      OPC=nop             
  nop                                                #  59    0xb7602  1      OPC=nop             
  nop                                                #  60    0xb7603  1      OPC=nop             
  nop                                                #  61    0xb7604  1      OPC=nop             
  nop                                                #  62    0xb7605  1      OPC=nop             
  nop                                                #  63    0xb7606  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb7607  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb7609  1      OPC=nop             
  nop                                                #  66    0xb760a  1      OPC=nop             
  nop                                                #  67    0xb760b  1      OPC=nop             
  nop                                                #  68    0xb760c  1      OPC=nop             
  nop                                                #  69    0xb760d  1      OPC=nop             
  nop                                                #  70    0xb760e  1      OPC=nop             
  nop                                                #  71    0xb760f  1      OPC=nop             
  nop                                                #  72    0xb7610  1      OPC=nop             
  nop                                                #  73    0xb7611  1      OPC=nop             
  nop                                                #  74    0xb7612  1      OPC=nop             
  nop                                                #  75    0xb7613  1      OPC=nop             
  nop                                                #  76    0xb7614  1      OPC=nop             
  nop                                                #  77    0xb7615  1      OPC=nop             
  nop                                                #  78    0xb7616  1      OPC=nop             
  nop                                                #  79    0xb7617  1      OPC=nop             
  nop                                                #  80    0xb7618  1      OPC=nop             
  nop                                                #  81    0xb7619  1      OPC=nop             
  nop                                                #  82    0xb761a  1      OPC=nop             
  nop                                                #  83    0xb761b  1      OPC=nop             
  nop                                                #  84    0xb761c  1      OPC=nop             
  nop                                                #  85    0xb761d  1      OPC=nop             
  nop                                                #  86    0xb761e  1      OPC=nop             
  nop                                                #  87    0xb761f  1      OPC=nop             
  nop                                                #  88    0xb7620  1      OPC=nop             
  nop                                                #  89    0xb7621  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb7622  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE16do_negative_signEv, .-_ZNKSt10moneypunctIwLb0EE16do_negative_signEv

