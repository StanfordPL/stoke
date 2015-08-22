  .text
  .globl List_RemoveFirst
  .type List_RemoveFirst, @function

#! file-offset 0x66660
#! rip-offset  0x26660
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.List_RemoveFirst:             #        0x26660  0      OPC=<label>         
  movl %edi, %edi              #  1     0x26660  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x26662  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %edx  #  3     0x26664  5      OPC=movl_r32_m32    
  movl %edi, %edi              #  4     0x26669  2      OPC=movl_r32_r32    
  cmpl %edx, 0xc(%r15,%rdi,1)  #  5     0x2666b  5      OPC=cmpl_m32_r32    
  jl .L_266a0                  #  6     0x26670  2      OPC=jl_label        
  leal (,%rdx,4), %eax         #  7     0x26672  7      OPC=leal_r32_m16    
  movl %edi, %edi              #  8     0x26679  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax     #  9     0x2667b  4      OPC=addl_r32_m32    
  nop                          #  10    0x2667f  1      OPC=nop             
  movl %eax, %eax              #  11    0x26680  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax     #  12    0x26682  4      OPC=movl_r32_m32    
  addl $0x1, %edx              #  13    0x26686  3      OPC=addl_r32_imm8   
  movl %edi, %edi              #  14    0x26689  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rdi,1)  #  15    0x2668b  5      OPC=movl_m32_r32    
  popq %r11                    #  16    0x26690  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  17    0x26692  7      OPC=andl_r32_imm32  
  nop                          #  18    0x26699  1      OPC=nop             
  nop                          #  19    0x2669a  1      OPC=nop             
  nop                          #  20    0x2669b  1      OPC=nop             
  nop                          #  21    0x2669c  1      OPC=nop             
  addq %r15, %r11              #  22    0x2669d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  23    0x266a0  3      OPC=jmpq_r64        
  nop                          #  24    0x266a3  1      OPC=nop             
  nop                          #  25    0x266a4  1      OPC=nop             
  nop                          #  26    0x266a5  1      OPC=nop             
  nop                          #  27    0x266a6  1      OPC=nop             
.L_266a0:                      #        0x266a7  0      OPC=<label>         
  xorl %eax, %eax              #  28    0x266a7  2      OPC=xorl_r32_r32    
  popq %r11                    #  29    0x266a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  30    0x266ab  7      OPC=andl_r32_imm32  
  nop                          #  31    0x266b2  1      OPC=nop             
  nop                          #  32    0x266b3  1      OPC=nop             
  nop                          #  33    0x266b4  1      OPC=nop             
  nop                          #  34    0x266b5  1      OPC=nop             
  addq %r15, %r11              #  35    0x266b6  3      OPC=addq_r64_r64    
  jmpq %r11                    #  36    0x266b9  3      OPC=jmpq_r64        
  nop                          #  37    0x266bc  1      OPC=nop             
  nop                          #  38    0x266bd  1      OPC=nop             
  nop                          #  39    0x266be  1      OPC=nop             
  nop                          #  40    0x266bf  1      OPC=nop             
  nop                          #  41    0x266c0  1      OPC=nop             
  nop                          #  42    0x266c1  1      OPC=nop             
  nop                          #  43    0x266c2  1      OPC=nop             
  nop                          #  44    0x266c3  1      OPC=nop             
  nop                          #  45    0x266c4  1      OPC=nop             
  nop                          #  46    0x266c5  1      OPC=nop             
  nop                          #  47    0x266c6  1      OPC=nop             
  nop                          #  48    0x266c7  1      OPC=nop             
  nop                          #  49    0x266c8  1      OPC=nop             
  nop                          #  50    0x266c9  1      OPC=nop             
  nop                          #  51    0x266ca  1      OPC=nop             
  nop                          #  52    0x266cb  1      OPC=nop             
  nop                          #  53    0x266cc  1      OPC=nop             
  nop                          #  54    0x266cd  1      OPC=nop             
                                                                            
.size List_RemoveFirst, .-List_RemoveFirst

