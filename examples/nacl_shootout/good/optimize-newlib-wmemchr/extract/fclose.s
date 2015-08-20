  .text
  .globl fclose
  .type fclose, @function

#! file-offset 0x159b80
#! rip-offset  0x119b80
#! capacity    64 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
.fclose:                    #        0x119b80  0      OPC=<label>       
  pushq %rbx                #  1     0x119b80  1      OPC=pushq_r64_1   
  movl %edi, %ebx           #  2     0x119b81  2      OPC=movl_r32_r32  
  nop                       #  3     0x119b83  1      OPC=nop           
  nop                       #  4     0x119b84  1      OPC=nop           
  nop                       #  5     0x119b85  1      OPC=nop           
  nop                       #  6     0x119b86  1      OPC=nop           
  nop                       #  7     0x119b87  1      OPC=nop           
  nop                       #  8     0x119b88  1      OPC=nop           
  nop                       #  9     0x119b89  1      OPC=nop           
  nop                       #  10    0x119b8a  1      OPC=nop           
  nop                       #  11    0x119b8b  1      OPC=nop           
  nop                       #  12    0x119b8c  1      OPC=nop           
  nop                       #  13    0x119b8d  1      OPC=nop           
  nop                       #  14    0x119b8e  1      OPC=nop           
  nop                       #  15    0x119b8f  1      OPC=nop           
  nop                       #  16    0x119b90  1      OPC=nop           
  nop                       #  17    0x119b91  1      OPC=nop           
  nop                       #  18    0x119b92  1      OPC=nop           
  nop                       #  19    0x119b93  1      OPC=nop           
  nop                       #  20    0x119b94  1      OPC=nop           
  nop                       #  21    0x119b95  1      OPC=nop           
  nop                       #  22    0x119b96  1      OPC=nop           
  nop                       #  23    0x119b97  1      OPC=nop           
  nop                       #  24    0x119b98  1      OPC=nop           
  nop                       #  25    0x119b99  1      OPC=nop           
  nop                       #  26    0x119b9a  1      OPC=nop           
  callq .__nacl_read_tp     #  27    0x119b9b  5      OPC=callq_label   
  leaq -0x480(%rax), %rax   #  28    0x119ba0  7      OPC=leaq_r64_m16  
  movl %ebx, %esi           #  29    0x119ba7  2      OPC=movl_r32_r32  
  popq %rbx                 #  30    0x119ba9  1      OPC=popq_r64_1    
  movl %eax, %eax           #  31    0x119baa  2      OPC=movl_r32_r32  
  movl (%r15,%rax,1), %edi  #  32    0x119bac  4      OPC=movl_r32_m32  
  jmpq ._fclose_r           #  33    0x119bb0  5      OPC=jmpq_label_1  
  nop                       #  34    0x119bb5  1      OPC=nop           
  nop                       #  35    0x119bb6  1      OPC=nop           
  nop                       #  36    0x119bb7  1      OPC=nop           
  nop                       #  37    0x119bb8  1      OPC=nop           
  nop                       #  38    0x119bb9  1      OPC=nop           
  nop                       #  39    0x119bba  1      OPC=nop           
  nop                       #  40    0x119bbb  1      OPC=nop           
  nop                       #  41    0x119bbc  1      OPC=nop           
  nop                       #  42    0x119bbd  1      OPC=nop           
  nop                       #  43    0x119bbe  1      OPC=nop           
  nop                       #  44    0x119bbf  1      OPC=nop           
                                                                        
.size fclose, .-fclose

