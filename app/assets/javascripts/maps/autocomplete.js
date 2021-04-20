import 'js-autocomplete/auto-complete.css';
import autocomplete from 'js-autocomplete';

const autocompleteSearch = function() {
  const lines = JSON.parse(document.getElementById('search-data').dataset.lines)
  const searchInput = document.getElementById('q');

  if (lines && searchInput) {
    new autocomplete({
      selector: searchInput,
      minChars: 1,
      source: function(term, suggest){
          term = term.toLowerCase();
          const choices = lines;
          const matches = [];
          for (let i = 0; i < choices.length; i++)
              if (~choices[i].toLowerCase().indexOf(term)) matches.push(choices[i]);
          suggest(matches);
      },
    });
  }
};

export { autocompleteSearch };