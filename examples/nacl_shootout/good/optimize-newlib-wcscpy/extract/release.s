  .text
  .globl release
  .type release, @function

#! file-offset 0x65520
#! rip-offset  0x25520
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.release:                          #        0x25520  0      OPC=<label>         
  subl $0x8, %esp                  #  1     0x25520  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  2     0x25523  3      OPC=addq_r64_r64    
  nop                              #  3     0x25526  1      OPC=nop             
  nop                              #  4     0x25527  1      OPC=nop             
  nop                              #  5     0x25528  1      OPC=nop             
  nop                              #  6     0x25529  1      OPC=nop             
  nop                              #  7     0x2552a  1      OPC=nop             
  nop                              #  8     0x2552b  1      OPC=nop             
  nop                              #  9     0x2552c  1      OPC=nop             
  nop                              #  10    0x2552d  1      OPC=nop             
  nop                              #  11    0x2552e  1      OPC=nop             
  nop                              #  12    0x2552f  1      OPC=nop             
  nop                              #  13    0x25530  1      OPC=nop             
  nop                              #  14    0x25531  1      OPC=nop             
  nop                              #  15    0x25532  1      OPC=nop             
  nop                              #  16    0x25533  1      OPC=nop             
  nop                              #  17    0x25534  1      OPC=nop             
  nop                              #  18    0x25535  1      OPC=nop             
  nop                              #  19    0x25536  1      OPC=nop             
  nop                              #  20    0x25537  1      OPC=nop             
  nop                              #  21    0x25538  1      OPC=nop             
  nop                              #  22    0x25539  1      OPC=nop             
  nop                              #  23    0x2553a  1      OPC=nop             
  callq .findtcb                   #  24    0x2553b  5      OPC=callq_label     
  movl %eax, %edx                  #  25    0x25540  2      OPC=movl_r32_r32    
  testq %rdx, %rdx                 #  26    0x25542  3      OPC=testq_r64_r64   
  je .L_25580                      #  27    0x25545  2      OPC=je_label        
  movl %edx, %edx                  #  28    0x25547  2      OPC=movl_r32_r32    
  andl $0xfffb, 0x10(%r15,%rdx,1)  #  29    0x25549  9      OPC=andl_m32_imm32  
  movl 0x10053c50(%rip), %eax      #  30    0x25552  6      OPC=movl_r32_m32    
  movl %edx, %edx                  #  31    0x25558  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx      #  32    0x2555a  5      OPC=movl_r32_m32    
  nop                              #  33    0x2555f  1      OPC=nop             
  movl %eax, %eax                  #  34    0x25560  2      OPC=movl_r32_r32    
  cmpl 0x8(%r15,%rax,1), %ecx      #  35    0x25562  5      OPC=cmpl_r32_m32    
  jg .L_25580                      #  36    0x25567  2      OPC=jg_label        
  addl $0x8, %esp                  #  37    0x25569  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  38    0x2556c  3      OPC=addq_r64_r64    
  popq %r11                        #  39    0x2556f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  40    0x25571  7      OPC=andl_r32_imm32  
  nop                              #  41    0x25578  1      OPC=nop             
  nop                              #  42    0x25579  1      OPC=nop             
  nop                              #  43    0x2557a  1      OPC=nop             
  nop                              #  44    0x2557b  1      OPC=nop             
  addq %r15, %r11                  #  45    0x2557c  3      OPC=addq_r64_r64    
  jmpq %r11                        #  46    0x2557f  3      OPC=jmpq_r64        
  nop                              #  47    0x25582  1      OPC=nop             
  nop                              #  48    0x25583  1      OPC=nop             
  nop                              #  49    0x25584  1      OPC=nop             
  nop                              #  50    0x25585  1      OPC=nop             
  nop                              #  51    0x25586  1      OPC=nop             
.L_25580:                          #        0x25587  0      OPC=<label>         
  movq %rdx, %rax                  #  52    0x25587  3      OPC=movq_r64_r64    
  addl $0x8, %esp                  #  53    0x2558a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  54    0x2558d  3      OPC=addq_r64_r64    
  popq %r11                        #  55    0x25590  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  56    0x25592  7      OPC=andl_r32_imm32  
  nop                              #  57    0x25599  1      OPC=nop             
  nop                              #  58    0x2559a  1      OPC=nop             
  nop                              #  59    0x2559b  1      OPC=nop             
  nop                              #  60    0x2559c  1      OPC=nop             
  addq %r15, %r11                  #  61    0x2559d  3      OPC=addq_r64_r64    
  jmpq %r11                        #  62    0x255a0  3      OPC=jmpq_r64        
  nop                              #  63    0x255a3  1      OPC=nop             
  nop                              #  64    0x255a4  1      OPC=nop             
  nop                              #  65    0x255a5  1      OPC=nop             
  nop                              #  66    0x255a6  1      OPC=nop             
  nop                              #  67    0x255a7  1      OPC=nop             
  nop                              #  68    0x255a8  1      OPC=nop             
  nop                              #  69    0x255a9  1      OPC=nop             
  nop                              #  70    0x255aa  1      OPC=nop             
  nop                              #  71    0x255ab  1      OPC=nop             
  nop                              #  72    0x255ac  1      OPC=nop             
  nop                              #  73    0x255ad  1      OPC=nop             
                                                                                
.size release, .-release

