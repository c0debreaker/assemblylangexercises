# Assembly Language exercises

### To compile

```
$ nasm -f elf32 -o exer1.o exer1.asm
```


### Then link it

```
$ ld -m elf_i386 exer1.o -o exer1
```


### Then run it

```
$ ./exer1
```