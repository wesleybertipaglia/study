// -----------------------------------------------
// Lab. : VETORES - OPERACOES DE BUSCA
// Ano/S: 2022/1S
// Atividade: Binary Tree Search
// -----------------------------------------------

#include <iostream>

struct TreeNode {
    int data;
    TreeNode* left;
    TreeNode* right;

    TreeNode(int value) : data(value), left(nullptr), right(nullptr) {}
};

class BinarySearchTree {
public:
    // Função para inserir um elemento na árvore
    TreeNode* insert(TreeNode* root, int value) {
        if (root == nullptr) {
            return new TreeNode(value);
        }

        if (value < root->data) {
            root->left = insert(root->left, value);
        } else if (value > root->data) {
            root->right = insert(root->right, value);
        }

        return root;
    }

    // Função para realizar busca em árvore binária de busca
    TreeNode* search(TreeNode* root, int target) {
        if (root == nullptr || root->data == target) {
            return root;
        }

        // Se o valor alvo for menor que o valor do nó atual, busca na subárvore à esquerda
        if (target < root->data) {
            return search(root->left, target);
        }

        // Se o valor alvo for maior que o valor do nó atual, busca na subárvore à direita
        return search(root->right, target);
    }
};

int main() {
    BinarySearchTree bst;
    TreeNode* root = nullptr;

    // Inserindo elementos na árvore
    root = bst.insert(root, 10);
    bst.insert(root, 5);
    bst.insert(root, 15);
    bst.insert(root, 3);
    bst.insert(root, 7);
    bst.insert(root, 12);
    bst.insert(root, 18);

    // Realizando busca
    int target = 7;
    TreeNode* result = bst.search(root, target);

    if (result != nullptr) {
        std::cout << "Elemento " << target << " encontrado na árvore." << std::endl;
    } else {
        std::cout << "Elemento " << target << " não encontrado na árvore." << std::endl;
    }

    return 0;
}
