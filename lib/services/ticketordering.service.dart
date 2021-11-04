import 'package:amc_flutter_app/helpers/ticket.type.dart';
import 'package:amc_flutter_app/models/ticket.model.dart';
import 'package:amc_flutter_app/models/ticketorder.model.dart';
import 'package:flutter/material.dart';

class TicketOrderingService extends ChangeNotifier {

  TicketOrderModel? _ticketOrder;
  int maxTickets = 5; // max tickets per type
  int minTickets = 0;
  TicketOrderModel? get ticketOrder => _ticketOrder;

  void createOrder() {
    if (_ticketOrder == null) {
      _ticketOrder = TicketOrderModel();
    }
  }

  void addTicketsToOrder(TicketType? ticketType, int amount) {
    if (_ticketOrder != null && (amount <= maxTickets && amount >= minTickets)) {
      TicketModel tModel = _ticketOrder!.tickets.firstWhere((TicketModel ticket) => ticket.type == ticketType);
      tModel.amount = amount;
      notifyListeners();
    }
  }

  int getTotalNumberOfTickets() {
    int totalTickets = 0;
    _ticketOrder!.tickets.forEach((TicketModel ticketModel) {
      totalTickets += ticketModel.amount!;
    });
    return totalTickets;
  }

  double getTotalPriceOfTickets() {
    double totalTicketPrice = 0;
    _ticketOrder!.tickets.forEach((TicketModel ticketModel) {
      totalTicketPrice += ticketModel.amount! * ticketModel.price!;
    });
    return totalTicketPrice;
  }

  void resetOrder() {
    _ticketOrder = TicketOrderModel();
  }
}