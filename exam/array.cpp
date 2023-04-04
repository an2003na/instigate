#include <iostream>

class Array
{
    int size;
    int* arr;
public:

    Array(int s = 1)
    {
        size = s;
        arr = new int(s);
    }

    int* push_back(int elem)
    {
        size = size + 1;
        int* arr1 = new int(size);
        for(int i =0; i < size; i++){
            arr1[i] = arr[i];
        }
        arr1[size-1] = elem;
        arr = new int(size);
        for(int i = 0; i < size; i++){
            arr[i] = arr1[i];
        }
        return arr;
    }

    int get_size()
    {
        return size;
    }

    int* pop_back()
    {
        size = size - 1;
        int* arr1 = new int(size);
        for(int i =0; i < size; i++){
            arr1[i] = arr[i];
        }
        arr = new int(size);
        for(int i = 0; i < size; i++){
            arr[i] = arr1[i];
        }
        return arr;
    }
    
    int* remove(int pos)
    {
        size = size - 1;
        int* arr1 = new int(size);
        for(int i = 0; i < size; i++){
            if(i == pos){
                continue;
            }
            arr1[i] = arr[i];
        }
        arr = new int(size);
        for(int i = 0; i < size; i++){
            arr[i] = arr1[i];
        }
        return arr;
    }

    int at(int index)
    {
        if(index >=size){
            std::cout << "Index is out of range." << std::endl;
            return 0;
        }
        return arr[index];
    }

    void print()
    {
        for(int i = 0; i < size; i++){
            std::cout << "arr[" << i << "] = " << arr[i] << std::endl;
        }
    }


    ~Array()
    {
        delete[] arr;
    }
};


int main()
{
    Array arr1 = Array(0);
    arr1.push_back(5);
    arr1.push_back(6);
    arr1.push_back(7);
    std::cout << "This is my array: " <<std::endl;
    arr1.print();    
    std::cout << "The element that have index 2 is:  " ;
    std::cout << arr1.at(2) << std::endl;
    arr1.pop_back();
    std::cout << "This is my array after deleting element from the end: " << std::endl;
    arr1.print();
    arr1.remove(1);
    std::cout << "This is my array after deleting element of index 1: " <<std::endl;
    arr1.print();
    return 0;
}
