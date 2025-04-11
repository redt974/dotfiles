# Dotfiles de Thib

Ce dépôt contient mes configurations personnelles pour divers outils sur Linux, tels que Zsh, Kitty, Tmux, Starship, et Git. Ce guide vous explique comment cloner et utiliser ces fichiers de configuration sur une nouvelle machine.

## Prérequis

Assurez-vous que les outils suivants sont installés sur votre machine :

- [Zsh](https://www.zsh.org/)
- [Kitty](https://sw.kovidgoyal.net/kitty/)
- [Starship](https://starship.rs/)
- [Tmux](https://github.com/tmux/tmux)
- [Git](https://git-scm.com/)

## Cloner le dépôt

Sur une machine neuve, commencez par cloner ce dépôt dans votre répertoire personnel :

```bash
git clone https://github.com/<username>/dotfiles.git ~/dotfiles
```

## Utilisation des dotfiles

Pour activer les configurations, nous utilisons [stow](https://github.com/nljj/stow). Si `stow` n'est pas installé, vous pouvez l'installer avec :

- Sur Arch Linux :
  ```bash
  sudo pacman -S stow
  ```

Ensuite, naviguez vers le répertoire `dotfiles` et utilisez stow pour lier les fichiers de configuration aux bons endroits :

```bash
cd ~/dotfiles
stow zsh kitty tmux starship git
```

Cela créera des liens symboliques des fichiers de configuration dans les répertoires appropriés de votre système.

## Personnalisation

Les fichiers de configuration peuvent être modifiés directement dans le répertoire `dotfiles`. Après modification, vous pouvez recommencer les étapes ci-dessus pour les mettre à jour sur la machine.

## Mise à jour du dépôt

Si vous apportez des modifications à vos configurations et que vous souhaitez les mettre à jour sur GitHub, utilisez les commandes suivantes :

```bash
git add .
git commit -m "Mise à jour des configurations"
git push origin main
```

Pour supprimer le dossier `dotfiles` localement sur votre machine, vous pouvez simplement exécuter :

```bash
rm -rf ~/dotfiles
```
