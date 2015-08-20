  .text
  .globl release
  .type release, @function

#! file-offset 0x65540
#! rip-offset  0x25540
#! capacity    128 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.release:                          #        0x25540  0      OPC=<label>         
  subl $0x8, %esp                  #  1     0x25540  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  2     0x25543  3      OPC=addq_r64_r64    
  nop                              #  3     0x25546  1      OPC=nop             
  nop                              #  4     0x25547  1      OPC=nop             
  nop                              #  5     0x25548  1      OPC=nop             
  nop                              #  6     0x25549  1      OPC=nop             
  nop                              #  7     0x2554a  1      OPC=nop             
  nop                              #  8     0x2554b  1      OPC=nop             
  nop                              #  9     0x2554c  1      OPC=nop             
  nop                              #  10    0x2554d  1      OPC=nop             
  nop                              #  11    0x2554e  1      OPC=nop             
  nop                              #  12    0x2554f  1      OPC=nop             
  nop                              #  13    0x25550  1      OPC=nop             
  nop                              #  14    0x25551  1      OPC=nop             
  nop                              #  15    0x25552  1      OPC=nop             
  nop                              #  16    0x25553  1      OPC=nop             
  nop                              #  17    0x25554  1      OPC=nop             
  nop                              #  18    0x25555  1      OPC=nop             
  nop                              #  19    0x25556  1      OPC=nop             
  nop                              #  20    0x25557  1      OPC=nop             
  nop                              #  21    0x25558  1      OPC=nop             
  nop                              #  22    0x25559  1      OPC=nop             
  nop                              #  23    0x2555a  1      OPC=nop             
  callq .findtcb                   #  24    0x2555b  5      OPC=callq_label     
  movl %eax, %edx                  #  25    0x25560  2      OPC=movl_r32_r32    
  testq %rdx, %rdx                 #  26    0x25562  3      OPC=testq_r64_r64   
  je .L_255a0                      #  27    0x25565  2      OPC=je_label        
  movl %edx, %edx                  #  28    0x25567  2      OPC=movl_r32_r32    
  andl $0xfffb, 0x10(%r15,%rdx,1)  #  29    0x25569  9      OPC=andl_m32_imm32  
  movl 0x10053c30(%rip), %eax      #  30    0x25572  6      OPC=movl_r32_m32    
  movl %edx, %edx                  #  31    0x25578  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdx,1), %ecx      #  32    0x2557a  5      OPC=movl_r32_m32    
  nop                              #  33    0x2557f  1      OPC=nop             
  movl %eax, %eax                  #  34    0x25580  2      OPC=movl_r32_r32    
  cmpl 0x8(%r15,%rax,1), %ecx      #  35    0x25582  5      OPC=cmpl_r32_m32    
  jg .L_255a0                      #  36    0x25587  2      OPC=jg_label        
  addl $0x8, %esp                  #  37    0x25589  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  38    0x2558c  3      OPC=addq_r64_r64    
  popq %r11                        #  39    0x2558f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  40    0x25591  7      OPC=andl_r32_imm32  
  nop                              #  41    0x25598  1      OPC=nop             
  nop                              #  42    0x25599  1      OPC=nop             
  nop                              #  43    0x2559a  1      OPC=nop             
  nop                              #  44    0x2559b  1      OPC=nop             
  addq %r15, %r11                  #  45    0x2559c  3      OPC=addq_r64_r64    
  jmpq %r11                        #  46    0x2559f  3      OPC=jmpq_r64        
  nop                              #  47    0x255a2  1      OPC=nop             
  nop                              #  48    0x255a3  1      OPC=nop             
  nop                              #  49    0x255a4  1      OPC=nop             
  nop                              #  50    0x255a5  1      OPC=nop             
  nop                              #  51    0x255a6  1      OPC=nop             
.L_255a0:                          #        0x255a7  0      OPC=<label>         
  movq %rdx, %rax                  #  52    0x255a7  3      OPC=movq_r64_r64    
  addl $0x8, %esp                  #  53    0x255aa  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  54    0x255ad  3      OPC=addq_r64_r64    
  popq %r11                        #  55    0x255b0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  56    0x255b2  7      OPC=andl_r32_imm32  
  nop                              #  57    0x255b9  1      OPC=nop             
  nop                              #  58    0x255ba  1      OPC=nop             
  nop                              #  59    0x255bb  1      OPC=nop             
  nop                              #  60    0x255bc  1      OPC=nop             
  addq %r15, %r11                  #  61    0x255bd  3      OPC=addq_r64_r64    
  jmpq %r11                        #  62    0x255c0  3      OPC=jmpq_r64        
  nop                              #  63    0x255c3  1      OPC=nop             
  nop                              #  64    0x255c4  1      OPC=nop             
  nop                              #  65    0x255c5  1      OPC=nop             
  nop                              #  66    0x255c6  1      OPC=nop             
  nop                              #  67    0x255c7  1      OPC=nop             
  nop                              #  68    0x255c8  1      OPC=nop             
  nop                              #  69    0x255c9  1      OPC=nop             
  nop                              #  70    0x255ca  1      OPC=nop             
  nop                              #  71    0x255cb  1      OPC=nop             
  nop                              #  72    0x255cc  1      OPC=nop             
  nop                              #  73    0x255cd  1      OPC=nop             
                                                                                
.size release, .-release

