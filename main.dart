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
