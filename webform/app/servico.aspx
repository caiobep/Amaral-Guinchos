﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servico.aspx.cs" Inherits="app_servico" MasterPageFile="~/app/index.master"  EnableEventValidation="false" %>

<asp:Content ContentplaceholderID="indexBodyPlaceholder" runat="server">
<script type="text/javascript">
  window.onload = function shellName() {
    var shellTitle = document.getElementById("shellTitle");
    shellTitle.innerHTML = 'Home';
}
</script>
<style media="screen">
  .title{
    margin-bottom: 0;
  }
  .card{
    background-color: rgba(244, 244, 244, 0.78);
  }
  .opcao{
    padding:20px;
    background-color: #FFF;
  }

</style>
<form  runat="server">
  <div class="mdl-grid card-box">
    <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="cardCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Ordens de Serviço</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <tr class="os1">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID1" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <asp:Button ID="openOe1" Text="Abrir" runat="server" OnClick="showOs" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr class="os2">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID2" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <asp:Button ID="openOe2" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr class="os3">
            <td class="mdl-data-table__cell--non-numeric">
              <i class="material-icons md-38 mdl-color-text--red-200">directions</i>
            </td>
            <td class="os-code">
              <label id="osID3" runat="server">Sem Dados</label>
            </td>
            <td class="os-date mdl-cell">
              <asp:Button ID="openOe3" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
        </table>
      </div>
      <div class="mdl-card__actions">
        <!-- <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a> -->
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-cli-options" UseSubmitBehavior="False">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-cli-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--6-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="sugestaoCli">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Serviços Recentes</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
        <table class="mdl-data-table mdl-data-table--selectable mdl-js-data-table mdl-cell mdl-cell--12-col mdl-cell--8-tablet">
          <thead>
            <tr>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Tipo de Servico</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label>Código Os</label>
              </th>
              <th class="mdl-data-table__cell--non-numeric">
                <label></label>
              </th>
            </tr>
          </thead>
          <tbody>
            <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico1">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS1">#idOs</label>
            </td>
            <td class="mdl-data-tavle__cell">
              <asp:Button ID="openServicoOs1" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
          </tr>
          <tr>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoServico2">#idServico</label>
            </td>
            <td class="mdl-data-table__cell--non-numeric">
              <label runat="server" id="codigoOS2">#idOs</label>
            </td>
            <td class="mdl-data-tavle__cell">
              <asp:Button ID="openServicoOs2" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
            </td>
        </tr>
        <tr>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoServico3">#idServico</label>
          </td>
          <td class="mdl-data-table__cell--non-numeric">
            <label runat="server" id="codigoOS3">#idOs</label>
          </td>
          <td class="mdl-data-tavle__cell">
            <asp:Button ID="openServicoOs3" Text="Abrir" runat="server" Class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect"/>
          </td>
        </tr>
      </tbody>
        </table>
      </div>

      <div class="mdl-card__actions">
        <!-- <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          Ver Mais
        </a> -->
      </div>
      <div class="mdl-card__menu">
        <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect" id="card-sugestao-options">
          <i class="material-icons">more_vert</i>
        </button>
        <ul class="mdl-menu mdl-js-menu mdl-js-ripple-effect mdl-menu--bottom-right" for="card-sugestao-options">
          <li class="mdl-menu__item">Esconder</li>
          <li class="mdl-menu__item">Fixar</li>
        </ul>
      </div>
    </div>

    <!-- NovaOS -->
    <div class="card mdl-card mdl-cell mdl-shadow--2dp mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid" id="novoServico">
      <div class="mdl-card__title mdl-cell mdl-cell--12-col">
        <h2 class="mdl-card__title-text">Novo Serviço</h2>
      </div>
      <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">

        <div class=" mdl-card mdl-cell mdl-cell--12-col-desktop mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-grid mdl-card--border mdl-shadow--1dp" id="newCli">
          <div class="title mdl-card__title mdl-cell mdl-cell--12-col">
            <h3 class="mdl-card__title-text">Cliente</h2>
          </div>
          <div class="card-content mdl-grid mdl-cell mdl-cell--12-col">
              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="nomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="nomeCli">Nome</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col mdl-cell-4-col-phone">
                <asp:TextBox ID="SobrenomeCli" type="text" class="mdl-textfield__input" runat="server" ></asp:TextBox>
                <label class="mdl-textfield__label" for="SobrenomeCli">Sobrenome</label>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col mdl-cell-4-col-phone">
                <asp:TextBox id="cpfCli" type="text" class="mdl-textfield__input" runat="server" pattern="[0-9,.,-]*" onkeypress="mascara(this,'###.###.###-##')" onblur="validateCpf();"></asp:TextBox>
                <label class="mdl-textfield__label" for="cpfCli">CPF</label>
                <span class="mdl-textfield__error">Ultilize apenas números</span>
              </div>

              <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col mdl-cell-4-col-phone">
                <asp:TextBox ID="telCli" type="text" class="mdl-textfield__input" pattern="[0-9, ,-]*" runat="server" onkeypress="mascara(this,'## #####-###')"></asp:TextBox>
                <label class="mdl-textfield__label" for="telCli">Telefone</label>
              </div>
          </div>
          <!-- <div class="mdl-card__actions">
            <asp:Button  runat="server" ID="novoCliente" Text="Cadastrar e Ultilizar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
            </asp:Button>
            <a id="newCliCancelar" onclick="showCard('none','newCli')" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
              cancelar
            </a>
          </div> -->
        </div>
      <!-- Fim cliente -->

      <!-- inicio veiculo -->
      <div class=" mdl-card mdl-cell mdl-cell--12-col mdl-card--border" id="newVeiculo">
        <div class="title mdl-card__title">
          <h2 class="mdl-card__title-text">Veículo</h2>
        </div>
        <div class="mdl-card__supporting-text mdl-grid">
          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="modeloVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="modeloVeiculo">Modelo Veículo</label>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--2-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="placaVeiculo" pattern="[0-9,A-Z,-]*" onkeydown="mascara(this,'###-####')"></asp:TextBox>
            <label class="mdl-textfield__label" for="placaVeiculo">Placa</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="anoVeiculo" pattern="[0-9]*"></asp:TextBox>
            <label class="mdl-textfield__label" for="anoVeiculo">Ano de Fabricação</label>
            <span class="mdl-textfield__error">Tente ultilizar apenas números</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="fabricanteVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="fabricanteVeiculo">Fabricante</label>
            <span class="mdl-textfield__error">Digite o Nome do fabricante</span>
          </div>

          <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="corVeiculo"></asp:TextBox>
            <label class="mdl-textfield__label" for="corVeiculo">Cor</label>
          </div>
        </div>
        <!-- <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="btnNewVeiculo" runat="server" onclick="novoVeiculo" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newVeiculo')">
            cancelar
          </a>
        </div> -->
      </div>
      <!-- fim veiculo -->

      <!-- Tipo de Servico -->
      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Tipo de Serviço</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectServico">Tipo de Serviço</label>
            <asp:DropDownList ID="selectServico" runat="server" class="dropdown"
             DataSourceID="servico" DataTextField="tipo_servico" DataValueField="id_servico">
              <asp:ListItem Text="Servidor Fora fo Ar"/>
              <asp:ListItem Text="Servidor Fora fo Ar"/>
              <asp:ListItem Text="Servidor Fora fo Ar"/>
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Seguro</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectSeguro">Seguradora</label>
            <asp:DropDownList ID="selectSeguro" runat="server" class="dropdown"
             DataSourceID="seguro" DataTextField="nome_seguro" DataValueField="id_seguro">
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
            </asp:DropDownList>
          </div>
      </div>

      <div class="mdl-card mdl-shadow--4dp mdl-cell mdl-cell--12-col" id="searchSinistro" style="display:none;">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Sinistro Existênte</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <form action="#">
            <div class="mdl-textfield mdl-js-textfield">
              <asp:DropDownList ID="sinistroddl" runat="server" class="dropdown">
                <asp:ListItem Text="Servidor fora do ar" />
              </asp:DropDownList>
            </div>
          </form>
        </div>
        <div class="mdl-card__actions">
          <asp:Button Text="Ultilizar" id="sinistroExistente" runat="server" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','searchSinistro')">
            cancelar
          </a>
        </div>
      </div>

      <div class="mdl-card mdl-cell mdl-cell--12-col" id="newViagem">
        <div class="mdl-card__title">
          <h2 class="mdl-card__title-text">Adicionando uma Viagem</h2>
        </div>
        <div class="mdl-card__supporting-text">
          <h2 class="mdl-card__title-text">Local de Partida</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
              <input ID="cepViagemPartida" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepPartida()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemPartida">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemPartida" type="text" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemPartida">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemPartida">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemPartida" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemPartida">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemPartida" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemPartida">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Local do Destino</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col mdl-cell-4-col-phone">
              <input ID="cepViagemDestino" type="text" class="mdl-textfield__input" pattern="[0-9,-]*" onkeypress="mascara(this,'#####-###')" onblur="pesquisaCepDestino()"></asp:TextBox>
              <label class="mdl-textfield__label" for="cepViagemDestino">CEP</label>
              <span class="mdl-textfield__error">Ultilize apenas números</span>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="bairroViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="bairroViagemDestino">Bairro</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--4-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="cidadeViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="cidadeViagemDestino">Cidade</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--3-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="ufViagemDestino" class="mdl-textfield__input" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="ufViagemDestino">Unidade Federativa</label>
            </div>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--10-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="enderecoViagemDestino" TextMode="multiline" class="mdl-textfield__input" rows="4" runat="server" placeholder=" "></asp:TextBox>
              <label class="mdl-textfield__label" for="enderecoViagemDestino">Endereço</label>
            </div>
          <h2 class="mdl-card__title-text">Observações</h2>
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label mdl-cell mdl-cell--12-col-desktop mdl-cell-4-col-phone">
              <asp:TextBox ID="obsViagem" runat="server" class="mdl-textfield__input mdl-cell mdl-cell--12-col"
               TextMode="multiline" rows="4"></asp:TextBox>
              <label class="mdl-textfield__label" for="obsViagem">Observações</label>
            </div>

        </div>
        <!-- <div class="mdl-card__actions">
          <asp:Button ID="registrarViagem" OnClick="newViagem" runat="server" Text="adicionar" type="text" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
          </asp:Button>
          <a id="newCliCancelar" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" onclick="showCard('none','newViagem')">
            cancelar
          </a>
        </div> -->
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione o Motorista</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectMotorista">Nome do Motorista</label>
            <asp:DropDownList ID="selectMotorista" runat="server" class="dropdown"
             DataSourceID="motorista" DataTextField="nome_func" DataValueField="id_mot">
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Selecione a Viatura</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <label class="simpleLabeldd" for="selectFrota">Veículo</label>
            <asp:DropDownList ID="selectFrota" runat="server" class="dropdown"
             DataSourceID="frota" DataTextField="nome_frota" DataValueField="id_frota">
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
              <asp:ListItem Text="Servidor Fora do Ar"/>
            </asp:DropDownList>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Sinistro</h2>
          <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <asp:TextBox runat="server" class="mdl-textfield__input" type="text" id="numeroSinistro"></asp:TextBox>
            <label class="mdl-textfield__label" for="numeroSinistro">Número do Sinistro</label>
          </div>
      </div>

      <div class=" opcao mdl-cell mdl-cell--6-col-desktop mdl-cell--12-col-tablet">
          <h2 class="mdl-card__title-text">Agendamento</h2>
          <div class="mdl-textfield mdl-textfield--floating-label mdl-js-textfield mdl-cell mdl-cell--8-col-desktop mdl-cell--4-col-tablet">
            <asp:TextBox runat="server" ID="agendamentoOS" type="datetime-local" class="mdl-textfield__input" placeholder=" "></asp:TextBox>
            <label class="mdl-textfield__label" for="agendamentoOS">Data e Hora</label>
          </div>
      </div>

      <div class="opcao mdl-cell mdl-cell--12-col">
          <h2 class="mdl-card__title-text">Status</h2>
          <div class="mdl-textfield mdl-js-textfield mdl-cell mdl-cell--4-col">
            <label class="simpleLabeldd" for="statusOs">Status</label>
            <asp:DropDownList ID="statusOs" runat="server" class="dropdown">
              <asp:ListItem Text="Aberto"/>
              <asp:ListItem Text="Fechado"/>
              <asp:ListItem Text="Recusado"/>
            </asp:DropDownList>
          </div>
      </div>
      <!-- FINAL DO CONTEUDO DO CARTAO -->
    </div>

      <div class="mdl-layout-spacer"></div>
      <div class="mdl-card__actions mdl-card--border">
        <asp:Button id="registrarOs" runat="server" OnClick="newOs" Text="Abrir Ordem de Serviço"
         class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
        </asp:Button>
      </div>
    </div>
  </div>
</form>


  <button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored mdl-color--red mdl-color-text--white" id="fabButton">
    <i class="material-icons">add</i>
    <span class="visuallyhidden">Add</span>
  </button>

  <div class="mdl-js-snackbar mdl-snackbar">
    <div class="mdl-snackbar__text"></div>
    <button type="button" class="mdl-snackbar__action"></button>
  </div>
  <!-- DataSource -->

  <asp:SqlDataSource ID="cliente" runat="server"
   ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
   ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
   SelectCommand="SELECT MAX(id_cli) FROM cliente"
   InsertCommand="INSERT INTO cliente
    (nome_cli, sobrenome_cli, cpf_cli, email_cli, sx_cli, telefone_cli, dtnasc_cli, cep_cli, bairro_cli, cid_cli, uf_cli, endereco_cli)
     VALUES
     (@nome, @sobrenome, @cpf, @email, @sexo, @telefone, @dataNasc, @cep, @bairro, @cidade, @uf, @endereco)">
    <InsertParameters>
      <asp:ControlParameter Name="nome" ControlID="nomeCli" PropertyName="Text"/>
      <asp:ControlParameter Name="sobrenome" ControlID="SobrenomeCli" PropertyName="Text"/>
      <asp:ControlParameter Name="sexo" ControlID="sexoCli" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="email" ControlID="emailCli" PropertyName="Text"/>
      <asp:ControlParameter Name="cpf" ControlID="cpfCli" PropertyName="Text"/>
      <asp:ControlParameter Name="telefone" ControlID="telCli" PropertyName="Text"/>
      <asp:ControlParameter Name="cep" ControlID="cepCli" PropertyName="Text"/>
      <asp:ControlParameter Name="bairro" ControlID="bairroCli" PropertyName="Text"/>
      <asp:ControlParameter Name="uf" ControlID="ufCli" PropertyName="Text"/>
      <asp:ControlParameter Name="cidade" ControlID="cidadeCli" PropertyName="Text"/>
      <asp:ControlParameter Name="endereco" ControlID="residenciaCli" PropertyName="Text"/>
      <asp:Parameter Name="dataNasc"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="veiculo" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  InsertCommand="INSERT INTO veiculo
  (id_cli, fabricante_veiculo, modelo_veiculo, ano_veiculo, placa_veiculo, cor_veiculo)
  VALUES
  (@cliente, @fabricante, @modelo, @ano, @placa, @cor)"
  SelectCommand="SELECT MAX(id_veiculo) FROM veiculo">
    <InsertParameters>
      <asp:ControlParameter Name="fabricante" ControlID="fabricanteVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="modelo" ControlID="modeloVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="placa" ControlID="placaVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="cor" ControlID="corVeiculo" PropertyName="Text"/>
      <asp:ControlParameter Name="ano" ControlID="anoVeiculo" PropertyName="Text"/>
      <asp:Parameter Name="cliente"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="viagem" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT MAX(id_viagem) FROM viagem"
    InsertCommand="INSERT INTO viagem
    (id_mot, id_frota, bairro_destino_viagem, bairro_partida_viagem,
    endereco_destino_viagem, endereco_partida_viagem, cidade_destino_viagem,
    cidade_partida_viagem, uf_destino_viagem, uf_partida_viagem, obs_viagem)
    VALUES
    (@idMot, @idFrota, @bairroDestinoViagem, @bairroPartidaViagem,
    @enderecoDestinoViagem, @enderecoPartidaViagem, @cidadeDestinoViagem,
    @cidadePartidaViagem, @ufDestinoViagem, @ufPartidaViagem, @obsViagem)">
    <InsertParameters>
      <asp:ControlParameter Name="idMot" ControlID="selectMotorista" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="idFrota" ControlID="selectFrota" PropertyName="SelectedValue"/>
      <asp:ControlParameter Name="bairroDestinoViagem" ControlID="bairroViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="bairroPartidaViagem" ControlID="bairroViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="enderecoDestinoViagem" ControlID="enderecoViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="enderecoPartidaViagem" ControlID="enderecoViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="cidadeDestinoViagem" ControlID="cidadeViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="cidadePartidaViagem" ControlID="cidadeViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="ufDestinoViagem" ControlID="ufViagemDestino" PropertyName="Text"/>
      <asp:ControlParameter Name="ufPartidaViagem" ControlID="ufViagemPartida" PropertyName="Text"/>
      <asp:ControlParameter Name="obsViagem" ControlID="obsViagem" PropertyName="Text"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="seguro" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_seguro, nome_seguro FROM seguro">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="servico" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_servico, tipo_servico FROM servico">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="sinistro" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO sinistro (sinistro) VALUES (@sinistro)"
    SelectCommand="SELECT MAX(id_sinistro) FROM sinistro">
    <InsertParameters>
      <asp:ControlParameter Name="sinistro" ControlID="numeroSinistro" PropertyName="Text"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="motorista" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT id_mot, nome_func FROM motoristaOnly">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="frota" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="SELECT nome_frota, id_frota FROM frota">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="os" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO ordem_de_servico
    (id_func, id_veiculo, dtab_os, agendamento_os, status_os)
    VALUES
    (@idFunc, @idVeiculo, @dtab, @agendamentoOs, @status)"
    SelectCommand="SELECT MAX(id_os) FROM ordem_de_servico">
    <InsertParameters>
      <asp:ControlParameter Name="status" ControlID="statusOs" PropertyName="Text"/>
      <asp:ControlParameter Name="agendamentoOs" ControlID="agendamentoOs" PropertyName="Text"/>
      <asp:Parameter Name="dtab"/>
      <asp:SessionParameter Name="idFunc" SessionField="log" />
      <asp:SessionParameter Name="idVeiculo" SessionField="veiculo" />
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="viagemServico" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO viagem_servico (id_viagem, id_os)
    VALUES(@viagem, @OS)">
    <InsertParameters>
      <asp:SessionParameter SessionField="os" Name="os"/>
      <asp:SessionParameter SessionField="viagem" Name="viagem"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="servicoOs" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    InsertCommand="INSERT INTO servico_os(id_servico, id_os, id_sinistro)
    VALUES(@servico, @OS, @sinistro)">
    <InsertParameters>
      <asp:SessionParameter SessionField="os" Name="os"/>
      <asp:ControlParameter Name="servico" ControlID="selectServico" PropertyName="SelectedValue"/>
      <asp:SessionParameter SessionField="sinistro" Name="sinistro"/>
    </InsertParameters>
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="SELECT id_os, dtab_os FROM ordem_de_servico WHERE (status_os = 'Aberto') ORDER BY id_os DESC LIMIT 3">
  </asp:SqlDataSource>

  <asp:SqlDataSource
  ID="lattestServicoOs" runat="server"
  ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
  ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
  SelectCommand="
  SELECT servico_os.id_os, servico.tipo_servico FROM servico_os INNER JOIN servico
  on servico_os.id_servico = servico.id_servico
   ORDER BY id_os DESC LIMIT 3  ">
  </asp:SqlDataSource>

  <asp:SqlDataSource ID="consultaOS" runat="server"
    ConnectionString="<%$ ConnectionStrings:amaralguinchoConnectionString %>"
    ProviderName="<%$ ConnectionStrings:amaralguinchoConnectionString.ProviderName %>"
    SelectCommand="
    SELECT
    cliente.nome_cli, cliente.sobrenome_cli, cliente.cpf_cli, cliente.email_cli,
    cliente.sx_cli, cliente.telefone_cli,cliente.dtnasc_cli, cliente.cep_cli,
    cliente.bairro_cli, cliente.cid_cli, cliente.uf_cli, cliente.endereco_cli,
    veiculo.fabricante_veiculo, veiculo.modelo_veiculo, veiculo.ano_veiculo,
    veiculo.placa_veiculo, veiculo.cor_veiculo,
    viagem.bairro_destino_viagem, viagem.bairro_partida_viagem,
    viagem.endereco_destino_viagem, viagem.endereco_partida_viagem,
    viagem.cidade_destino_viagem, viagem.cidade_partida_viagem,
    viagem.uf_destino_viagem, viagem.uf_partida_viagem, viagem.obs_viagem,
    sinistro.sinistro,
    os.dtab_os, os.agendamento_os, os.status_os,
    servico.id_servico,
    motorista.id_mot
    FROM servico_os
    INNER JOIN viagem_servico ON
      servico_os.id_os = viagem_servico.id_os
        INNER JOIN ordem_de_servico os ON
          viagem_servico.id_os = os.id_os
          INNER JOIN funcionario ON
            os.id_func = funcionario.id_func
            INNER JOIN veiculo ON
              os.id_veiculo = veiculo.id_veiculo
              INNER JOIN cliente ON
                veiculo.id_cli = cliente.id_cli
                INNER JOIN viagem ON
                  viagem_servico.id_viagem = viagem.id_viagem
                  INNER JOIN motorista ON
                    viagem.id_mot = motorista.id_mot
                    INNER JOIN frota ON
                      viagem.id_frota = frota.id_frota
                    INNER JOIN servico ON
                      servico_os.id_servico = servico.id_servico
                    INNER JOIN sinistro ON
                      servico_os.id_sinistro = sinistro.id_sinistro
    WHERE os.id_os = (@consultaOS) AND
          os.id_func = funcionario.id_func">
    <SelectParameters>
      <asp:Parameter name="consultaos"/>
    </SelectParameters>
  </asp:SqlDataSource>

  <script src="../scripts/cpf.min.js" charset="utf-8"></script>
  <script>
  window.onload = dontHide();

    var dialog = document.querySelector('dialog');
    var showDialogButton = document.querySelector('#fabButton');
    if (! dialog.showModal) {
    dialogPolyfill.registerDialog(dialog);
    }
    showDialogButton.addEventListener('click', function() {
    dialog.showModal();
  });
  dialog.querySelector('.close').addEventListener('click', function() {
    dialog.close();
  });

  function mascara(t,mask){
    var i = t.value.length;
    var output = mask.substring(1,0);
    var input = mask.substring(i);
    if(input.substring(0,1) != output){
      t.value += input.substring(0,1);
    }
  }

  function validateCpf() {
    if(CPF.validate(document.getElementById('<%=cpfCli.ClientID%>').value) != true){
      alert("O CPF inserido não existe!");
    }
  }

function pesquisaCepPartida() {
    var valor = document.getElementById('cepViagemPartida').value;
    //Nova variável "cep" somente com dígitos.
    var cep = valor.replace(/\D/g, '');

    //Verifica se campo cep possui valor informado.
    if (cep != "") {

        //Expressão regular para validar o CEP.
        var validacep = /^[0-9]{8}$/;

        //Valida o formato do CEP.
        if(validacep.test(cep)) {


            //Cria um elemento javascript.
            var script = document.createElement('script');

            //Sincroniza com o callback.
            script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callbackViagemPartida';

            //Insere script no documento e carrega o conteúdo.
            document.body.appendChild(script);

        } //end if.
        else {
            //cep é inválido.
            alert("Formato de CEP inválido.");
        }
    } //end if.
    else {
        //cep sem valor, limpa formulário.
        valor = "";
    }
  }

  function meu_callbackViagemPartida(conteudo) {
      if (!("erro" in conteudo)) {
        var endereco = document.getElementById('<%=enderecoViagemPartida.ClientID%>');
        var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
        var cidade = document.getElementById('<%=cidadeViagemPartida.ClientID%>');
        var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
          //Atualiza os campos com os valores.
          endereco.value=(conteudo.logradouro);
          bairro.value= (conteudo.bairro);
          cidade.value=(conteudo.localidade);
          uf.value=(conteudo.uf);
      }
      else {
          //CEP não Encontrado.
          var endereco = document.getElementById('<%=enderecoViagemPartida.ClientID%>');
          var uf = document.getElementById('<%=ufViagemPartida.ClientID%>');
          var cidade = document.getElementById('<%=cidadeViagemPartida.ClientID%>');
          var bairro = document.getElementById('<%=bairroViagemPartida.ClientID%>');
          endereco.value="desconhecido";
          bairro.value= "desconhecido";
          cidade.value="desconhecido";
          uf.value="desconhecido";
      }

  }

  function pesquisaCepDestino() {
      var valor = document.getElementById('cepViagemDestino').value;
      //Nova variável "cep" somente com dígitos.
      var cep = valor.replace(/\D/g, '');

      //Verifica se campo cep possui valor informado.
      if (cep != "") {

          //Expressão regular para validar o CEP.
          var validacep = /^[0-9]{8}$/;

          //Valida o formato do CEP.
          if(validacep.test(cep)) {


              //Cria um elemento javascript.
              var script = document.createElement('script');

              //Sincroniza com o callback.
              script.src = '//viacep.com.br/ws/'+ cep + '/json/?callback=meu_callbackViagemDestino';

              //Insere script no documento e carrega o conteúdo.
              document.body.appendChild(script);

          } //end if.
          else {
              //cep é inválido.
              alert("Formato de CEP inválido.");
          }
      } //end if.
      else {
          //cep sem valor, limpa formulário.
          valor = "";
      }
    }

    function meu_callbackViagemDestino(conteudo) {
        if (!("erro" in conteudo)) {
          var endereco = document.getElementById('<%=enderecoViagemDestino.ClientID%>');
          var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
          var cidade = document.getElementById('<%=cidadeViagemDestino.ClientID%>');
          var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
            //Atualiza os campos com os valores.
            endereco.value=(conteudo.logradouro);
            bairro.value= (conteudo.bairro);
            cidade.value=(conteudo.localidade);
            uf.value=(conteudo.uf);
        }
        else {
            //CEP não Encontrado.
            var endereco = document.getElementById('<%=enderecoViagemDestino.ClientID%>');
            var uf = document.getElementById('<%=ufViagemDestino.ClientID%>');
            var cidade = document.getElementById('<%=cidadeViagemDestino.ClientID%>');
            var bairro = document.getElementById('<%=bairroViagemDestino.ClientID%>');
            endereco.value="desconhecido";
            bairro.value= "desconhecido";
            cidade.value="desconhecido";
            uf.value="desconhecido";
        }

    }

  function showCard(card,reverseCard) {
    if(card != 'none'){
      document.getElementById(card).style.display='block';
    }
    if(reverseCard != 'none'){
      document.getElementById(reverseCard).style.display='none';
    }

  }

  </script>
</asp:Content>
