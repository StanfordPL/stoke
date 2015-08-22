  .text
  .globl _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv
  .type _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv, @function

#! file-offset 0xf76a0
#! rip-offset  0xb76a0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv:        #        0xb76a0  0      OPC=<label>         
  pushq %rbx                                         #  1     0xb76a0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                    #  2     0xb76a1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                    #  3     0xb76a3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                    #  4     0xb76a5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                   #  5     0xb76a7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                    #  6     0xb76aa  3      OPC=addq_r64_r64    
  movl %esi, %esi                                    #  7     0xb76ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rsi,1), %eax                        #  8     0xb76af  5      OPC=movl_r32_m32    
  leal 0xf(%rsp), %edx                               #  9     0xb76b4  4      OPC=leal_r32_m16    
  movl %eax, %eax                                    #  10    0xb76b8  2      OPC=movl_r32_r32    
  movl 0x1c(%r15,%rax,1), %esi                       #  11    0xb76ba  5      OPC=movl_r32_m32    
  nop                                                #  12    0xb76bf  1      OPC=nop             
  nop                                                #  13    0xb76c0  1      OPC=nop             
  nop                                                #  14    0xb76c1  1      OPC=nop             
  nop                                                #  15    0xb76c2  1      OPC=nop             
  nop                                                #  16    0xb76c3  1      OPC=nop             
  nop                                                #  17    0xb76c4  1      OPC=nop             
  nop                                                #  18    0xb76c5  1      OPC=nop             
  nop                                                #  19    0xb76c6  1      OPC=nop             
  nop                                                #  20    0xb76c7  1      OPC=nop             
  nop                                                #  21    0xb76c8  1      OPC=nop             
  nop                                                #  22    0xb76c9  1      OPC=nop             
  nop                                                #  23    0xb76ca  1      OPC=nop             
  nop                                                #  24    0xb76cb  1      OPC=nop             
  nop                                                #  25    0xb76cc  1      OPC=nop             
  nop                                                #  26    0xb76cd  1      OPC=nop             
  nop                                                #  27    0xb76ce  1      OPC=nop             
  nop                                                #  28    0xb76cf  1      OPC=nop             
  nop                                                #  29    0xb76d0  1      OPC=nop             
  nop                                                #  30    0xb76d1  1      OPC=nop             
  nop                                                #  31    0xb76d2  1      OPC=nop             
  nop                                                #  32    0xb76d3  1      OPC=nop             
  nop                                                #  33    0xb76d4  1      OPC=nop             
  nop                                                #  34    0xb76d5  1      OPC=nop             
  nop                                                #  35    0xb76d6  1      OPC=nop             
  nop                                                #  36    0xb76d7  1      OPC=nop             
  nop                                                #  37    0xb76d8  1      OPC=nop             
  nop                                                #  38    0xb76d9  1      OPC=nop             
  nop                                                #  39    0xb76da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEEC1EPKwRKS1_  #  40    0xb76db  5      OPC=callq_label     
  movl %ebx, %eax                                    #  41    0xb76e0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                   #  42    0xb76e2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                    #  43    0xb76e5  3      OPC=addq_r64_r64    
  popq %rbx                                          #  44    0xb76e8  1      OPC=popq_r64_1      
  popq %r11                                          #  45    0xb76e9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                            #  46    0xb76eb  7      OPC=andl_r32_imm32  
  nop                                                #  47    0xb76f2  1      OPC=nop             
  nop                                                #  48    0xb76f3  1      OPC=nop             
  nop                                                #  49    0xb76f4  1      OPC=nop             
  nop                                                #  50    0xb76f5  1      OPC=nop             
  addq %r15, %r11                                    #  51    0xb76f6  3      OPC=addq_r64_r64    
  jmpq %r11                                          #  52    0xb76f9  3      OPC=jmpq_r64        
  nop                                                #  53    0xb76fc  1      OPC=nop             
  nop                                                #  54    0xb76fd  1      OPC=nop             
  nop                                                #  55    0xb76fe  1      OPC=nop             
  nop                                                #  56    0xb76ff  1      OPC=nop             
  nop                                                #  57    0xb7700  1      OPC=nop             
  nop                                                #  58    0xb7701  1      OPC=nop             
  nop                                                #  59    0xb7702  1      OPC=nop             
  nop                                                #  60    0xb7703  1      OPC=nop             
  nop                                                #  61    0xb7704  1      OPC=nop             
  nop                                                #  62    0xb7705  1      OPC=nop             
  nop                                                #  63    0xb7706  1      OPC=nop             
  movl %eax, %edi                                    #  64    0xb7707  2      OPC=movl_r32_r32    
  nop                                                #  65    0xb7709  1      OPC=nop             
  nop                                                #  66    0xb770a  1      OPC=nop             
  nop                                                #  67    0xb770b  1      OPC=nop             
  nop                                                #  68    0xb770c  1      OPC=nop             
  nop                                                #  69    0xb770d  1      OPC=nop             
  nop                                                #  70    0xb770e  1      OPC=nop             
  nop                                                #  71    0xb770f  1      OPC=nop             
  nop                                                #  72    0xb7710  1      OPC=nop             
  nop                                                #  73    0xb7711  1      OPC=nop             
  nop                                                #  74    0xb7712  1      OPC=nop             
  nop                                                #  75    0xb7713  1      OPC=nop             
  nop                                                #  76    0xb7714  1      OPC=nop             
  nop                                                #  77    0xb7715  1      OPC=nop             
  nop                                                #  78    0xb7716  1      OPC=nop             
  nop                                                #  79    0xb7717  1      OPC=nop             
  nop                                                #  80    0xb7718  1      OPC=nop             
  nop                                                #  81    0xb7719  1      OPC=nop             
  nop                                                #  82    0xb771a  1      OPC=nop             
  nop                                                #  83    0xb771b  1      OPC=nop             
  nop                                                #  84    0xb771c  1      OPC=nop             
  nop                                                #  85    0xb771d  1      OPC=nop             
  nop                                                #  86    0xb771e  1      OPC=nop             
  nop                                                #  87    0xb771f  1      OPC=nop             
  nop                                                #  88    0xb7720  1      OPC=nop             
  nop                                                #  89    0xb7721  1      OPC=nop             
  callq ._Unwind_Resume                              #  90    0xb7722  5      OPC=callq_label     
                                                                                                  
.size _ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv, .-_ZNKSt10moneypunctIwLb0EE14do_curr_symbolEv

