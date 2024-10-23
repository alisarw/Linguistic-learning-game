extends Node2D

var selected_card = null  # Track the currently selected card

func _ready():
    # Ensure all cards can accept input
    for card in $CardContainer.get_children():
        card.connect("gui_input", self, "_on_card_input", [card])

func _on_card_input(event, card):
    if event is InputEventMouseButton:
        if event.button_index == BUTTON_LEFT and event.pressed:
            if selected_card == null:
                # Select the card if no card is currently selected
                selected_card = card
                card.is_selected = true
                card.get_node("AnimationPlayer").play("flipping")  # Play flip animation
            elif selected_card != card:
                # Flip the previously selected card
                selected_card.get_node("AnimationPlayer").play("flipping")
                selected_card.is_selected = false  # Deselect the first card
                selected_card = card  # Select the new card
                card.is_selected = true  # Mark the new card as selected
                card.get_node("AnimationPlayer").play("flipping")  # Flip the new card
            else:
                # If the same card is clicked, you can deselect it or add any logic here
                selected_card.get_node("AnimationPlayer").play("flipping")  # Optionally flip it back
                selected_card.is_selected = false  # Deselect
                selected_card = null  # Reset selection
