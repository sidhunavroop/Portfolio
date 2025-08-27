// app/javascript/sortable_cards.js

// Function to set data-pos attributes on each card
const setPositions = () => {
  document.querySelectorAll('.card').forEach((card, i) => {
    card.dataset.pos = i + 1;
  });
};

// Function to initialize sortable behavior
const ready = () => {
  setPositions();

  // Initialize jQuery UI sortable
  $('.sortable').sortable();

  // Bind to sortupdate event
  $('.sortable').on('sortupdate', (e, ui) => {
    const updatedOrder = [];
    setPositions();

    $('.card').each(function (i) {
      updatedOrder.push({
        id: $(this).data('id'),
        position: i + 1,
      });
    });

    // Send updated order to server
    $.ajax({
      type: 'PUT',
      url: '/personalportfolios/sort',
      data: { order: updatedOrder },
    });
  });
};

// Run when DOM is ready
$(document).ready(ready);
