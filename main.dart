// Function to add a new node to the end of the list
//   void add(dynamic data) {
//     Node newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       Node temp = head!;
//       while (temp.next != null) {
//         temp = temp.next!;
//       }
//       temp.next = newNode;
//     }
//   }

//   // Function to print the elements of the list
//   void display() {
//     Node? temp = head;
//     while (temp != null) {
//       print(temp.data);
//       temp = temp.next;
//     }
//   }
// }

// void main() {
//   LinkedList linkedList = LinkedList();

//   // Adding elements to the linked list
//   linkedList.add(1);
//   linkedList.add('data');
//   linkedList.add(3);

//   // Displaying the elements of the linked list
//   linkedList.display();
// }

class Node {
  dynamic data;
  Node? next;

  Node(this.data);

  Node.withNext(this.data, this.next);
}

class LinkedList {
  Node? head;

  LinkedList() {
    head = null;
  }

  void add(dynamic data) {
    Node node = Node(data);
    if (head == null) {
      head = node;
    } else {
      Node? temp = head!;
      while (temp!.next != null) {
        temp = temp.next;
      }
      temp.next = node;
    }
  }

  void display() {
    if (head == null) {
      print('No Objecct in the linked list');
    } else {
      Node? temp = head!;
      while (temp != null) {
        print(temp.data);
        temp = temp.next;
      }
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();
  linkedList.add('data');
  linkedList.add('data2');
  linkedList.add('data3');
  linkedList.add('data4');
  linkedList.display();
}
