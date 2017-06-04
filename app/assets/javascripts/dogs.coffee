# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require jquery
#= require dataTables/jquery.dataTables
#= require bootstrap-sprockets

jQuery ->
  $('#dogs').dataTable
    bJQueryUI: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#dogs').data('source')
    language: {
        'sEmptyTable': 'Nenhum registro encontrado',
        'sInfo': 'Mostrando de _START_ até _END_ de _TOTAL_ registros',
        'sInfoEmpty': 'Mostrando 0 até 0 de 0 registros',
        'sInfoFiltered': '(Filtrados de _MAX_ registros)',
        'sInfoPostFix': '',
        'sInfoThousands': '.',
        'sLengthMenu': '_MENU_ resultados por página',
        'sLoadingRecords': 'Carregando...',
        'sProcessing': 'Processando...',
        'sZeroRecords': 'Nenhum registro encontrado',
        'sSearch': '<i class="fa fa-search" aria-hidden="true"></i> Pesquisar pelo nome do cachorro ou do dono',
        'oPaginate': {
            'sNext': 'Próximo',
            'sPrevious': 'Anterior',
            'sFirst': 'Primeiro',
            'sLast': 'Último'
        },
        'oAria': {
            'sSortAscending': ': Ordenar colunas de forma ascendente',
            'sSortDescending': ': Ordenar colunas de forma descendente'
        }
    }