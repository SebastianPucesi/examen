import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movil_wrc_app/providers/calendar_provider.dart';

class CalendarPage extends ConsumerWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final calendar = ref.watch(getCalendar); // Comentario 1: Obtener el calendario desde el proveedor

    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: ListView.builder(
        itemCount: calendar.length, // Usar la longitud de la lista de eventos del calendario
        itemBuilder: (context, index) {
          final event = calendar[index];
          return ListTile(
            title: Text(event.title),
            subtitle: Text(event.date.toString()), // Ajustar según la estructura de tu evento
            onTap: () {
              // Acción al hacer tap en un evento del calendario
            },
          );
        },
      ),
    );
  }
}
