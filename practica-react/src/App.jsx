
import { useState } from 'react';
import './App.css';

function TarjetaCongreso({ titulo, fecha, lugar }) {
  const [inscrito, setInscrito] = useState(false);

  return (
    <article className="tarjeta">
      <p className="etiqueta">CONGRESO CIENTÍFICO</p>
      <h2>{titulo}</h2>
      <p><strong>Fecha:</strong> {fecha}</p>
      <p><strong>Lugar:</strong> {lugar}</p>

      <button onClick={() => setInscrito(!inscrito)}>
        {inscrito ? 'Cancelar inscripción de prueba' : 'Inscribirse'}
      </button>

      <p className="mensaje">
        {inscrito
          ? 'Inscripción de prueba registrada.'
          : 'Aún no tienes una inscripción de prueba.'}
      </p>
    </article>
  );
}

export default function App() {
  return (
    <main className="contenedor">
      <h1>Actividades del congreso</h1>
      <p>Práctica introductoria de React.</p>

      <TarjetaCongreso
        titulo="Innovación y tecnología"
        fecha="15 de noviembre de 2026"
        lugar="Auditorio principal"
      />
    </main>
  );
}
